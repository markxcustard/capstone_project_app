/* global Vue, VueRouter, axios, google, initTheme */

var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      message: "My Exercise App!",
      exercises: [],
      currentExercise: {},
      titleFilter: "",
      inputAddress: "60714",
      yelpData: {},
      mapPlace: {},
      coordinates: {},
      searchPlace: ""
    };
  },
  watch: {
    yelpData: function() {
      var map = new google.maps.Map(document.getElementById("map"), {
        center: { lat: -34.397, lng: 150.644 },
        zoom: 12
      });
      console.log("the map is", map);

      this.yelpData.businesses.forEach(function(yelpAddy) {
        var contentString =
          '<div id="content" style="color: black">' +
          '<div id="siteNotice">' +
          "</div>" +
          `<h4 id="firstHeading" class="firstHeading" style="color: black">${
            yelpAddy.name
          }</h4>` +
          '<div id="bodyContent" style="color: black">' +
          `<p>${yelpAddy.rating}</p>` +
          `<p>${yelpAddy.name}</p>` +
          `<a id="bodyContent" style="color: black" href="${
            yelpAddy.url
          }" target="_blank">Go to Yelp` +
          "</div>" +
          "</div>";

        var infowindow = new google.maps.InfoWindow({
          content: contentString
        });

        var yelpAddress =
          yelpAddy.location.display_address[0] +
          ", " +
          yelpAddy.location.display_address[1];
        var geocoder = new google.maps.Geocoder();
        geocoder.geocode({ address: yelpAddress }, function(results, status) {
          if (status === "OK") {
            map.setCenter(results[0].geometry.location);
            var marker = new google.maps.Marker({
              position: results[0].geometry.location,
              map: map,
              Name: yelpAddy.name
            });
            marker.addListener("click", function() {
              infowindow.open(map, marker);
            });
          } else {
            alert(
              "Geocode was not successful for the following reason: " + status
            );
          }
        });
      });
    }
  },
  mounted: function() {
    initTheme();

    var map = new google.maps.Map(document.getElementById("map"), {
      center: { lat: -34.397, lng: 150.644 },
      zoom: 12
    });
  },

  // created: function() {
  //   axios.get("/v1/exercises").then(
  //     function(response) {
  //       this.exercises = response.data;
  //       console.log(this.exercises);
  //     }.bind(this)
  //   );
  // },
  methods: {
    searchPlaces: function() {
      console.log("searchPlaces....");
      var convertSearchPlaces = this.searchPlace.split(" ").join("+");
      axios.get(`/v1/yelps?address=${convertSearchPlaces}`).then(
        function(response) {
          this.yelpData = response.data;
          console.log("yelpData", this.yelpData);
        }.bind(this)
      );
    },

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

  mounted: function() {
    // setTimeout(initTheme, 1000);
    initTheme();
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
var ChooseYourExercisesPage = {
  template: "#choose-exercises-page",
  data: function() {
    return {
      message: "",
      exercises: [],
      currentExercise: {},
      workouts: [],
      workoutId: 1,
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

    axios.get("/v1/exercises").then(
      function(response) {
        var exercises = [];
        response.data.forEach(function(exercise) {
          exercise.selected = false;
          exercises.push(exercise);
        });
        this.exercises = exercises;
        console.log(this.exercises);
      }.bind(this)
    );
  },
  methods: {
    setCurrentExercise: function(inputExercise) {
      this.currentExercise = inputExercise;
    },
    createWorkout: function() {
      // console.log("selected workout:", this.workoutId);
      // var selectedExerciseIds = [];
      this.exercises.forEach(
        function(exercise) {
          if (exercise.selected === true) {
            // selectedExerciseIds.push(exercise.id);
            var params = {
              workout_id: this.workoutId,
              exercise_id: exercise.id
            };
            axios
              .post("/v1/exercise_workouts", params)
              .then(function(response) {
                console.log(
                  "successfully created exercise_workout",
                  response.data,
                  params
                );
              });
          }
        }.bind(this)
      );
      // console.log("selected exercises:", selectedExerciseIds);

      //     var params = {
      //       exercise_id: exercise.exercise_id,
      //       workout_id: this.workoutName
      //     };

      //     axios.post("/v1/exercise_workouts", params);
      //   }
      // });
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

  mounted: function() {
    // setTimeout(initTheme, 1000);
    initTheme();
  },

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

  mounted: function() {
    initTheme();
  },

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
    initTheme();
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
  methods: {
    reloadPage: function() {
      axios.get("/v1/exercises?random=true").then(
        function(response) {
          this.exercise = response.data;
        }.bind(this)
      );
    }
  },
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
  methods: {
    reloadPage: function() {
      axios.get("/v1/workouts?random=true").then(
        function(response) {
          this.workout = response.data;
        }.bind(this)
      );
    }
  },
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
  },
  watch: {
    $route: function(to, from) {
      if (to.path === "/exercises") {
        window.location.reload();
      }
    }
  }
});
