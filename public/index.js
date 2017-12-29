/* global Vue, VueRouter, axios */

var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      message: "My Exercise App!",
      exercises: [],
      currentExercise: {},
      titleFilter: ""
    };
  },
  created: function() {
    axios.get("/v1/exercises").then(
      function(response) {
        this.exercises = response.data;
        console.log(this.exercises);
      }.bind(this)
    );
  },
  methods: {
    setCurrentExercise: function(inputExercise) {
      this.currentExercise = inputExercise;
    },
    isValidExercise: function(inputExercise) {
      // return inputRecipe.title.indexOf(this.titleFilter) !== -1;
      return inputExercise.name.toLowerCase().includes(this.titleFilter);
    }
  },
  computed: {}
};

var SignupPage = {
  template: "#signup-page",
  data: function() {
    return {
      name: "",
      email: "",
      password: "",
      passwordConfirmation: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        name: this.name,
        email: this.email,
        password: this.password,
        password_confirmation: this.passwordConfirmation
      };
      axios
        .post("/users", params)
        .then(function(response) {
          router.push("/login");
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  }
};

var LoginPage = {
  template: "#login-page",
  data: function() {
    return {
      email: "",
      password: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        auth: { email: this.email, password: this.password }
      };
      axios
        .post("/user_token", params)
        .then(function(response) {
          axios.defaults.headers.common["Authorization"] =
            "Bearer " + response.data.jwt;
          localStorage.setItem("jwt", response.data.jwt);
          router.push("/");
        })
        .catch(
          function(error) {
            this.errors = ["Invalid email or password."];
            this.email = "";
            this.password = "";
          }.bind(this)
        );
    }
  }
};

var LogoutPage = {
  created: function() {
    axios.defaults.headers.common["Authorization"] = undefined;
    localStorage.removeItem("jwt");
    router.push("/");
  }
};

var router = new VueRouter({
  routes: [
    { path: "/", component: HomePage },
    // { path: "/recipes/new", component: RecipesNewPage },
    // { path: "/recipes/:id", component: RecipesShowPage },
    // { path: "/recipes/:id/edit", component: RecipesEditPage },
    // { path: "/sample", component: SamplePage },
    { path: "/v1/signup", component: SignupPage },
    { path: "/v1/login", component: LoginPage },
    { path: "/v1/logout", component: LogoutPage }
  ]
});

var app = new Vue({
  el: "#app",
  router: router,
  created: function() {
    var jwt = localStorage.getItem("jwt");
    if (jwt) {
      axios.defaults.headers.common["Authorization"] = jwt;
    }
  }
});
