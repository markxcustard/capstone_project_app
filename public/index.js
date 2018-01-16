/* global Vue, VueRouter, axios, google */

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

  mounted: function() {
    axios.get("/v1/exercises").then(
      function(response) {
        this.exercises = response.data;
      }.bind(this)
    );
    console.log(google);
    var map = new google.maps.Map(document.getElementById("map"), {
      center: { lat: 41.8781, lng: -87.6298 },
      zoom: 12
    });
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

var ExercisePage = {
  template: "#exercise-page",
  data: function() {
    return {
      message: "My Exercise App!",
      exercises: [],
      currentExercise: {},
      titleFilter: ""
    };
  },

  mounted: function() {},

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
var ChooseYourExercisesPage = {
  template: "#choose-exercises-page",
  data: function() {
    return {
      message: "",
      exercises: [],
      currentExercise: {},
      titleFilter: ""
    };
  },

  mounted: function() {},

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

var WorkoutPage = {
  template: "#workout-page",
  data: function() {
    return {
      message: "My Workout App!",
      workouts: [],
      currentWorkout: {},
      titleFilter: ""
    };
  },

  mounted: function() {},

  created: function() {
    axios.get("/v1/workouts").then(
      function(response) {
        this.workouts = response.data;
        console.log(this.workouts);
      }.bind(this)
    );
  },
  methods: {
    addWorkout: function(inputWorkout) {
      this.currentWorkout = inputWorkout;
    },
    setCurrentWorkout: function(inputWorkout) {
      this.currentWorkout = inputWorkout;
    },
    isValidWorkout: function(inputWorkout) {
      // return inputRecipe.title.indexOf(this.titleFilter) !== -1;
      return inputWorkout.name.toLowerCase().includes(this.titleFilter);
    }
  },
  computed: {}
};

var ChooseWorkoutsPage = {
  template: "#choose-workouts-page",
  data: function() {
    return {
      message: "My Workout App!",
      workouts: [],
      currentWorkout: {},
      titleFilter: ""
    };
  },

  mounted: function() {},

  created: function() {
    axios.get("/v1/workouts").then(
      function(response) {
        this.workouts = response.data;
        console.log(this.workouts);
      }.bind(this)
    );
  },
  methods: {
    setCurrentWorkout: function(inputWorkout) {
      this.currentWorkout = inputWorkout;
    },
    isValidWorkout: function(inputWorkout) {
      // return inputRecipe.title.indexOf(this.titleFilter) !== -1;
      return inputWorkout.name.toLowerCase().includes(this.titleFilter);
    }
  },
  computed: {}
};

var ExerciseWorkoutsPage = {
  template: "#exercise-workouts-page",
  data: function() {
    return {
      message: "Welcome to Vue.js!",
      workouts: []
    };
  },
  mounted: function() {
    axios.get("/v1/users/current_user").then(
      function(response) {
        console.log("current_user", response.data);
        this.workouts = response.data.workouts;
      }.bind(this)
    );
  },
  methods: {
    setCurrentExerciseWorkout: function(inputExerciseWorkout) {
      this.currentExerciseWorkout = inputExerciseWorkout;
    }
  },
  computed: {
    sortedWorkouts: function() {
      return this.workouts.sort(
        function(workout1, workout2) {
          return workout1[this.sortAttribute] > workout2[this.sortAttribute];
        }.bind(this)
      );
    }
  }
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
        .post("/v1/users", params)
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

var RandomExercisesPage = {
  template: "#random-exercise-page",
  data: function() {
    return {
      exercise: {
        name: "Sample name",
        description: "Sample description",
        video_link: ["Sample video_link"]
      }
    };
  },
  mounted: function() {
    axios.get("/v1/exercises?random=true").then(
      function(response) {
        this.exercise = response.data;
      }.bind(this)
    );
  },
  methods: {},
  computed: {}
};

var RandomWorkoutPage = {
  template: "#random-workout-page",
  data: function() {
    return {
      workout: {
        name: "Sample name",
        description: "Sample description"
      }
    };
  },
  mounted: function() {
    axios.get("/v1/workouts?random=true").then(
      function(response) {
        this.workout = response.data;
      }.bind(this)
    );
  },
  methods: {},
  computed: {}
};

var router = new VueRouter({
  routes: [
    { path: "/", component: HomePage },
    { path: "/exercises", component: ExercisePage },
    { path: "/choose_exercises", component: ChooseYourExercisesPage },
    { path: "/workouts", component: WorkoutPage },
    { path: "/choose_workouts", component: ChooseWorkoutsPage },
    { path: "/exercise_workouts", component: ExerciseWorkoutsPage },
    { path: "/random_exercises", component: RandomExercisesPage },
    { path: "/random_workouts", component: RandomWorkoutPage },
    { path: "/signup", component: SignupPage },
    { path: "/login", component: LoginPage },
    { path: "/logout", component: LogoutPage }
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
