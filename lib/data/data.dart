import 'package:flutter/material.dart';

class Volume {
  const Volume({
    @required this.weight,
    @required this.reps,
    @required this.notes,
  })  : assert(weight != null),
        assert(reps != null),
        assert(notes != null);
  final double weight;
  final int reps;
  final String notes;
}

class Program {
  const Program({
    @required this.id,
    @required this.volumes,
  })  : assert(id != null),
        assert(volumes != null);
  final String id;
  final List<Volume> volumes;

  String get title =>
      peliculas.where((f) => f["id"].contains(id)).first["value"];

  // Volume getById(int id) => Volume(id, volumes[id % _itemNames.length]);

  // set volume(Volume volume) {
  //   _volume
  //   // assert(newCatalog != null);
  //   // assert(_itemIds.every((id) => newCatalog.getById(id) != null),
  //   //     'The catalog $newCatalog does not have one of $_itemIds in it.');
  //   // _catalog = newCatalog;
  //   // notifyListeners();
  // }
}

class ProgramModel with ChangeNotifier {
  final List<Program> _programs = [];

  List<Program> get programs => _programs;

  bool hasProgram(String key) => _programs.asMap().containsKey(key);

  // .map((id) => _catalog.getById(id)).toList();

  // void updateExercises(String id) {
  //   if (programs.containsKey(id)) {
  //     programs.remove(id);
  //   } else {
  //     programs[id] = Program(id: id, volumes: []);
  //   }
  //   notifyListeners();
  // }

  // void removeExcersize(String id, int index) {
  //   programs[id].volumes.removeAt(index);
  //   notifyListeners();
  // }

  void add(String id) {
    // print(programs[id]);
    // programs[id].volumes.add(Volume(weight: 0, reps: 0, notes: ""));
    _programs.add(Program(id: id, volumes: []));
    notifyListeners();
  }

  // void changeMuscle(String value) {
  //   muscleGroup = value;
  //   notifyListeners();
  // }
}

const muscleGroups = [
  "",
  "Chest",
  "Forearms",
  "Lats",
  "Middle Back",
  "Lower Back",
  "Neck",
  "Quadriceps",
  "Hamstrings",
  "Calves",
  "Triceps",
  "Traps",
  "Shoulders",
  "Abdominals",
  "Glutes",
  "Biceps",
  "Adductors",
  "Abductors",
];

const List<Map<String, String>> peliculas = [
  {"id": "1", "value": "Rickshaw Carry", "type": "Forearms"},
  {"id": "2", "value": "One-Arm Medicine Ball Slam", "type": "Abdominals"},
  {"id": "3", "value": "Weighted Pull Ups", "type": "Lats"},
  {"id": "4", "value": "Atlas Stones", "type": "Lower Back"},
  {"id": "5", "value": "Side Laterals to Front Raise", "type": "Shoulders"},
  {"id": "6", "value": "Wrist Rotations with Straight Bar", "type": "Forearms"},
  {"id": "7", "value": "Barbell Glute Bridge", "type": "Glutes"},
  {"id": "8", "value": "Clean and Press", "type": "Shoulders"},
  {"id": "9", "value": "Farmer's Walk", "type": "Forearms"},
  {"id": "10", "value": "Deficit Deadlift", "type": "Lower Back"},
  {
    "id": "11",
    "value": "Standing Palm-In One-Arm Dumbbell Press",
    "type": "Shoulders"
  },
  {"id": "12", "value": "Clean Deadlift", "type": "Hamstrings"},
  {"id": "13", "value": "Plank", "type": "Abdominals"},
  {"id": "14", "value": "Bottoms Up", "type": "Abdominals"},
  {"id": "15", "value": "Clean and Jerk", "type": "Shoulders"},
  {"id": "16", "value": "One-Arm Kettlebell Push Press", "type": "Shoulders"},
  {"id": "17", "value": "Snatch", "type": "Quadriceps"},
  {"id": "18", "value": "Sumo Deadlift", "type": "Hamstrings"},
  {"id": "19", "value": "Hang Clean", "type": "Quadriceps"},
  {"id": "20", "value": "Standing Cable Lift", "type": "Abdominals"},
  {
    "id": "21",
    "value": "Standing Palms-Up Barbell Behind The Back Wrist Curl",
    "type": "Forearms"
  },
  {"id": "22", "value": "Wide-Grip Standing Barbell Curl", "type": "Biceps"},
  {"id": "23", "value": "Spell Caster", "type": "Abdominals"},
  {"id": "24", "value": "Dumbbell Floor Press", "type": "Triceps"},
  {
    "id": "25",
    "value": "Lying Face Down Plate Neck Resistance",
    "type": "Neck"
  },
  {"id": "26", "value": "Dumbbell Bench Press", "type": "Chest"},
  {"id": "27", "value": "Seated Barbell Military Press", "type": "Shoulders"},
  {"id": "28", "value": "Spider Curl", "type": "Biceps"},
  {"id": "29", "value": "Romanian Deadlift from Deficit", "type": "Hamstrings"},
  {"id": "30", "value": "Power Snatch", "type": "Hamstrings"},
  {"id": "31", "value": "Barbell Walking Lunge", "type": "Quadriceps"},
  {
    "id": "32",
    "value": "Front Squats With Two Kettlebells",
    "type": "Quadriceps"
  },
  {"id": "33", "value": "Spider Crawl", "type": "Abdominals"},
  {"id": "34", "value": "Power Clean from Blocks", "type": "Hamstrings"},
  {
    "id": "35",
    "value": "Seated Two-Arm Palms-Up Low-Pulley Wrist Curl",
    "type": "Forearms"
  },
  {"id": "36", "value": "Close-Grip Barbell Bench Press", "type": "Chest"},
  {"id": "37", "value": "Cocoons", "type": "Abdominals"},
  {"id": "38", "value": "Dumbbell Flyes", "type": "Chest"},
  {"id": "39", "value": "Incline Dumbbell Press", "type": "Chest"},
  {"id": "40", "value": "Low Cable Crossover", "type": "Chest"},
  {
    "id": "41",
    "value": "One-Arm High-Pulley Cable Side Bends",
    "type": "Abdominals"
  },
  {"id": "42", "value": "Standing Dumbbell Press", "type": "Shoulders"},
  {"id": "43", "value": "Olympic Squat", "type": "Quadriceps"},
  {"id": "44", "value": "Zottman Curl", "type": "Biceps"},
  {"id": "45", "value": "One-Arm Side Laterals", "type": "Shoulders"},
  {"id": "46", "value": "Power Partials", "type": "Shoulders"},
  {"id": "47", "value": "Leverage Shrug", "type": "Traps"},
  {
    "id": "48",
    "value": "Triceps Pushdown - V-Bar Attachment",
    "type": "Triceps"
  },
  {"id": "49", "value": "Wrist Roller", "type": "Forearms"},
  {"id": "50", "value": "Reverse Flyes", "type": "Shoulders"},
  {"id": "51", "value": "Step Mill", "type": "Quadriceps"},
  {"id": "52", "value": "Kettlebell Pistol Squat", "type": "Quadriceps"},
  {
    "id": "53",
    "value": "Standing Dumbbell Straight-Arm Front Delt Raise Above Head",
    "type": "Shoulders"
  },
  {"id": "54", "value": "Biceps Curl To Shoulder Press", "type": "Biceps"},
  {"id": "55", "value": "Weighted Bench Dip", "type": "Triceps"},
  {"id": "56", "value": "Barbell Hip Thrust", "type": "Glutes"},
  {"id": "57", "value": "Dips - Chest Version", "type": "Chest"},
  {"id": "58", "value": "Dumbbell Shoulder Press", "type": "Shoulders"},
  {"id": "59", "value": "One-Arm Dumbbell Row", "type": "Middle Back"},
  {"id": "60", "value": "Decline Crunch", "type": "Abdominals"},
  {"id": "61", "value": "Decline Dumbbell Flyes", "type": "Chest"},
  {"id": "62", "value": "Narrow Stance Squats", "type": "Quadriceps"},
  {"id": "63", "value": "Reverse Grip Triceps Pushdown", "type": "Triceps"},
  {"id": "64", "value": "Rocky Pull-Ups/Pulldowns", "type": "Lats"},
  {
    "id": "65",
    "value": "Seated One-Arm Dumbbell Palms-Up Wrist Curl",
    "type": "Forearms"
  },
  {"id": "66", "value": "Overhead Cable Curl", "type": "Biceps"},
  {"id": "67", "value": "Single Dumbbell Raise", "type": "Shoulders"},
  {"id": "68", "value": "Weighted Suitcase Crunch", "type": "Abdominals"},
  {"id": "69", "value": "Plate Twist", "type": "Abdominals"},
  {"id": "70", "value": "Weighted Jump Squat", "type": "Quadriceps"},
  {"id": "71", "value": "Squat with Chains", "type": "Quadriceps"},
  {"id": "72", "value": "Gorilla Chin/Crunch", "type": "Abdominals"},
  {"id": "73", "value": "Kneeling Cable Triceps Extension", "type": "Triceps"},
  {
    "id": "74",
    "value": "Kneeling Cable Crunch With Alternating Oblique Twists",
    "type": "Abdominals"
  },
  {"id": "75", "value": "Cable One Arm Tricep Extension", "type": "Triceps"},
  {"id": "76", "value": "Barbell Ab Rollout", "type": "Abdominals"},
  {"id": "77", "value": "Cable Crunch", "type": "Abdominals"},
  {"id": "78", "value": "Hanging Leg Raise", "type": "Abdominals"},
  {"id": "79", "value": "Barbell Squat", "type": "Quadriceps"},
  {"id": "80", "value": "Dumbbell Bicep Curl", "type": "Biceps"},
  {"id": "81", "value": "Front Barbell Squat", "type": "Quadriceps"},
  {"id": "82", "value": "V-Bar Pulldown", "type": "Lats"},
  {
    "id": "83",
    "value": "Smith Machine Overhead Shoulder Press",
    "type": "Shoulders"
  },
  {"id": "84", "value": "Seated Triceps Press", "type": "Triceps"},
  {"id": "85", "value": "Dumbbell Lying Supination", "type": "Forearms"},
  {"id": "86", "value": "Wide-Grip Barbell Bench Press", "type": "Chest"},
  {
    "id": "87",
    "value": "Bent Over Two-Arm Long Bar Row",
    "type": "Middle Back"
  },
  {"id": "88", "value": "Muscle Up", "type": "Lats"},
  {"id": "89", "value": "Leverage Shoulder Press", "type": "Shoulders"},
  {
    "id": "90",
    "value": "Wide-Grip Decline Barbell Bench Press",
    "type": "Chest"
  },
  {"id": "91", "value": "Rowing, Stationary", "type": "Middle Back"},
  {"id": "92", "value": "Front Plate Raise", "type": "Shoulders"},
  {
    "id": "93",
    "value": "Decline Close-Grip Bench To Skull Crusher",
    "type": "Triceps"
  },
  {"id": "94", "value": "Cross Body Hammer Curl", "type": "Biceps"},
  {"id": "95", "value": "Ab Roller", "type": "Abdominals"},
  {"id": "96", "value": "Stiff-Legged Dumbbell Deadlift", "type": "Hamstrings"},
  {"id": "97", "value": "Cable Crossover", "type": "Chest"},
  {"id": "98", "value": "Incline Dumbbell Flyes", "type": "Chest"},
  {"id": "99", "value": "Seated Cable Rows", "type": "Middle Back"},
  {"id": "100", "value": "Tricep Dumbbell Kickback", "type": "Triceps"},
  {"id": "101", "value": "Barbell Lunge", "type": "Quadriceps"},
  {"id": "102", "value": "3/4 Sit-Up", "type": "Abdominals"},
  {"id": "103", "value": "Ball Leg Curl", "type": "Hamstrings"},
  {"id": "104", "value": "Close-Grip Front Lat Pulldown", "type": "Lats"},
  {"id": "105", "value": "Dip Machine", "type": "Triceps"},
  {"id": "106", "value": "Dumbbell Incline Row", "type": "Middle Back"},
  {"id": "107", "value": "Reverse Crunch", "type": "Abdominals"},
  {"id": "108", "value": "Elliptical Trainer", "type": "Quadriceps"},
  {"id": "109", "value": "Bodyweight Squat", "type": "Quadriceps"},
  {"id": "110", "value": "Trap Bar Deadlift", "type": "Quadriceps"},
  {"id": "111", "value": "Narrow Stance Leg Press", "type": "Quadriceps"},
  {"id": "112", "value": "Single Leg Glute Bridge", "type": "Glutes"},
  {"id": "113", "value": "Standing Hip Circles", "type": "Abductors"},
  {"id": "114", "value": "Dumbbell Lying Pronation", "type": "Forearms"},
  {"id": "115", "value": "Reverse Barbell Preacher Curls", "type": "Biceps"},
  {"id": "116", "value": "Incline Push-Up", "type": "Chest"},
  {
    "id": "117",
    "value": "Hyperextensions With No Hyperextension Bench",
    "type": "Lower Back"
  },
  {"id": "118", "value": "Stairmaster", "type": "Quadriceps"},
  {"id": "119", "value": "Double Leg Butt Kick", "type": "Quadriceps"},
  {"id": "120", "value": "Neck Press", "type": "Chest"},
  {"id": "121", "value": "V-Bar Pullup", "type": "Lats"},
  {"id": "122", "value": "Ring Dips", "type": "Triceps"},
  {"id": "123", "value": "Standing One-Arm Cable Curl", "type": "Biceps"},
  {"id": "124", "value": "Seated Calf Raise", "type": "Calves"},
  {"id": "125", "value": "Dumbbell Shrug", "type": "Traps"},
  {
    "id": "126",
    "value": "Calf Press On The Leg Press Machine",
    "type": "Calves"
  },
  {"id": "127", "value": "Bench Dips", "type": "Triceps"},
  {"id": "128", "value": "Crunches", "type": "Abdominals"},
  {"id": "129", "value": "Dumbbell Rear Delt Row", "type": "Shoulders"},
  {"id": "130", "value": "Handstand Push-Ups", "type": "Shoulders"},
  {"id": "131", "value": "One Arm Dumbbell Preacher Curl", "type": "Biceps"},
  {"id": "132", "value": "Step-up with Knee Raise", "type": "Glutes"},
  {"id": "133", "value": "Front Incline Dumbbell Raise", "type": "Shoulders"},
  {"id": "134", "value": "Front Cable Raise", "type": "Shoulders"},
  {
    "id": "135",
    "value": "Two-Arm Kettlebell Military Press",
    "type": "Shoulders"
  },
  {"id": "136", "value": "Rope Climb", "type": "Lats"},
  {
    "id": "137",
    "value": "Dumbbell Bench Press with Neutral Grip",
    "type": "Chest"
  },
  {"id": "138", "value": "Cable Chest Press", "type": "Chest"},
  {"id": "139", "value": "Standing Concentration Curl", "type": "Biceps"},
  {"id": "140", "value": "Incline Push-Up Medium", "type": "Chest"},
  {"id": "141", "value": "Deadlift with Bands", "type": "Lower Back"},
  {"id": "142", "value": "Rope Straight-Arm Pulldown", "type": "Lats"},
  {"id": "143", "value": "Barbell Shoulder Press", "type": "Shoulders"},
  {"id": "144", "value": "Hang Snatch", "type": "Hamstrings"},
  {"id": "145", "value": "Kettlebell Sumo High Pull", "type": "Traps"},
  {"id": "146", "value": "Bench Press - Powerlifting", "type": "Triceps"},
  {"id": "147", "value": "Rocking Standing Calf Raise", "type": "Calves"},
  {"id": "148", "value": "Goblet Squat", "type": "Quadriceps"},
  {
    "id": "149",
    "value": "Seated Palm-Up Barbell Wrist Curl",
    "type": "Forearms"
  },
  {"id": "150", "value": "Reverse Cable Curl", "type": "Biceps"},
  {"id": "151", "value": "Wide-Grip Lat Pulldown", "type": "Lats"},
  {"id": "152", "value": "Side Lateral Raise", "type": "Shoulders"},
  {"id": "153", "value": "Incline Dumbbell Curl", "type": "Biceps"},
  {
    "id": "154",
    "value": "Kettlebell One-Legged Deadlift",
    "type": "Hamstrings"
  },
  {"id": "155", "value": "Alternate Hammer Curl", "type": "Biceps"},
  {
    "id": "156",
    "value": "Knee/Hip Raise On Parallel Bars",
    "type": "Abdominals"
  },
  {
    "id": "157",
    "value": "Triceps Overhead Extension with Rope",
    "type": "Triceps"
  },
  {"id": "158", "value": "Single-Arm Cable Crossover", "type": "Chest"},
  {"id": "159", "value": "Deadlift with Chains", "type": "Lower Back"},
  {"id": "160", "value": "Single-Arm Push-Up", "type": "Chest"},
  {"id": "161", "value": "One-Arm Kettlebell Clean", "type": "Hamstrings"},
  {"id": "162", "value": "Preacher Hammer Dumbbell Curl", "type": "Biceps"},
  {"id": "163", "value": "Alternating Kettlebell Press", "type": "Shoulders"},
  {"id": "164", "value": "Split Squat with Dumbbells", "type": "Quadriceps"},
  {
    "id": "165",
    "value": "Standing One-Arm Dumbbell Curl Over Incline Bench",
    "type": "Biceps"
  },
  {
    "id": "166",
    "value": "Standing Olympic Plate Hand Squeeze",
    "type": "Forearms"
  },
  {"id": "167", "value": "Close-Grip Standing Barbell Curl", "type": "Biceps"},
  {"id": "168", "value": "Standing Rope Crunch", "type": "Abdominals"},
  {"id": "169", "value": "Leverage Incline Chest Press", "type": "Chest"},
  {"id": "170", "value": "Cable Lying Triceps Extension", "type": "Triceps"},
  {
    "id": "171",
    "value": "Kettlebell Turkish Get-Up (Squat style)",
    "type": "Shoulders"
  },
  {"id": "172", "value": "Crunch - Hands Overhead", "type": "Abdominals"},
  {"id": "173", "value": "Cable Internal Rotation", "type": "Shoulders"},
  {
    "id": "174",
    "value": "Dumbbell One-Arm Triceps Extension",
    "type": "Triceps"
  },
  {"id": "175", "value": "Butterfly", "type": "Chest"},
  {"id": "176", "value": "Low Pulley Row To Neck", "type": "Shoulders"},
  {"id": "177", "value": "One Leg Barbell Squat", "type": "Quadriceps"},
  {"id": "178", "value": "Wide Stance Stiff Legs", "type": "Hamstrings"},
  {"id": "179", "value": "Decline Oblique Crunch", "type": "Abdominals"},
  {"id": "180", "value": "Clean", "type": "Hamstrings"},
  {"id": "181", "value": "One-Arm Incline Lateral Raise", "type": "Shoulders"},
  {"id": "182", "value": "Alternating Renegade Row", "type": "Middle Back"},
  {
    "id": "183",
    "value": "Bosu Ball Cable Crunch With Side Bends",
    "type": "Abdominals"
  },
  {
    "id": "184",
    "value": "Decline Dumbbell Triceps Extension",
    "type": "Triceps"
  },
  {"id": "185", "value": "Jumping Jacks", "type": "Quadriceps"},
  {
    "id": "186",
    "value": "Push-Ups With Feet On An Exercise Ball",
    "type": "Chest"
  },
  {"id": "187", "value": "Seated Cable Shoulder Press", "type": "Shoulders"},
  {"id": "188", "value": "Barbell Hack Squat", "type": "Quadriceps"},
  {"id": "189", "value": "Push-Ups With Feet Elevated", "type": "Chest"},
  {"id": "190", "value": "Leverage Chest Press", "type": "Chest"},
  {
    "id": "191",
    "value": "Seated Bent-Over Rear Delt Raise",
    "type": "Shoulders"
  },
  {"id": "192", "value": "Face Pull", "type": "Shoulders"},
  {"id": "193", "value": "Russian Twist", "type": "Abdominals"},
  {"id": "194", "value": "Cable Rope Rear-Delt Rows", "type": "Shoulders"},
  {"id": "195", "value": "Pallof Press", "type": "Abdominals"},
  {"id": "196", "value": "Freehand Jump Squat", "type": "Quadriceps"},
  {"id": "197", "value": "Skating", "type": "Quadriceps"},
  {"id": "198", "value": "Cable Iron Cross", "type": "Chest"},
  {"id": "199", "value": "Running, Treadmill", "type": "Quadriceps"},
  {
    "id": "200",
    "value": "One Arm Pronated Dumbbell Triceps Extension",
    "type": "Triceps"
  },
  {
    "id": "201",
    "value": "One-Arm Kettlebell Clean and Jerk",
    "type": "Shoulders"
  },
  {"id": "202", "value": "Side To Side Chins", "type": "Lats"},
  {
    "id": "203",
    "value": "Incline Dumbbell Bench With Palms Facing In",
    "type": "Chest"
  },
  {
    "id": "204",
    "value": "Seated Dumbbell Palms-Down Wrist Curl",
    "type": "Forearms"
  },
  {"id": "205", "value": "Jog In Place", "type": "Quadriceps"},
  {"id": "206", "value": "Dumbbell Raise", "type": "Shoulders"},
  {
    "id": "207",
    "value": "One Arm Supinated Dumbbell Triceps Extension",
    "type": "Triceps"
  },
  {"id": "208", "value": "Bicycling, Stationary", "type": "Quadriceps"},
  {"id": "209", "value": "Barbell Thruster", "type": "Quadriceps"},
  {"id": "210", "value": "Stiff-Legged Barbell Deadlift", "type": "Hamstrings"},
  {
    "id": "211",
    "value": "Standing One-Arm Dumbbell Triceps Extension",
    "type": "Triceps"
  },
  {"id": "212", "value": "Smith Machine Bench Press", "type": "Chest"},
  {"id": "213", "value": "Seated Side Lateral Raise", "type": "Shoulders"},
  {
    "id": "214",
    "value": "Dumbbell Lying Rear Lateral Raise",
    "type": "Shoulders"
  },
  {"id": "215", "value": "Two-Arm Dumbbell Preacher Curl", "type": "Biceps"},
  {"id": "216", "value": "Front Raise And Pullover", "type": "Chest"},
  {"id": "217", "value": "Middle Back Shrug", "type": "Middle Back"},
  {
    "id": "218",
    "value": "Band Good Morning (Pull Through)",
    "type": "Hamstrings"
  },
  {"id": "219", "value": "Bodyweight Reverse Lunge", "type": "Quadriceps"},
  {
    "id": "220",
    "value": "Seated One-Arm Dumbbell Palms-Down Wrist Curl",
    "type": "Forearms"
  },
  {"id": "221", "value": "Glute Kickback", "type": "Glutes"},
  {"id": "222", "value": "Reverse Triceps Bench Press", "type": "Triceps"},
  {"id": "223", "value": "Leverage Decline Chest Press", "type": "Chest"},
  {"id": "224", "value": "Chain Handle Extension", "type": "Triceps"},
  {"id": "225", "value": "Bench Press with Chains", "type": "Triceps"},
  {"id": "226", "value": "Barbell Rollout from Bench", "type": "Abdominals"},
  {"id": "227", "value": "Internal Rotation with Band", "type": "Shoulders"},
  {"id": "228", "value": "Machine Preacher Curls", "type": "Biceps"},
  {
    "id": "229",
    "value": "Bottoms-Up Clean From The Hang Position",
    "type": "Forearms"
  },
  {
    "id": "230",
    "value": "Incline Dumbbell Flyes - With A Twist",
    "type": "Chest"
  },
  {"id": "231", "value": "Iron Cross", "type": "Shoulders"},
  {
    "id": "232",
    "value": "Standing Low-Pulley Deltoid Raise",
    "type": "Shoulders"
  },
  {"id": "233", "value": "Advanced Kettlebell Windmill", "type": "Abdominals"},
  {"id": "234", "value": "Reverse Barbell Curl", "type": "Biceps"},
  {"id": "235", "value": "Standing Cable Wood Chop", "type": "Abdominals"},
  {"id": "236", "value": "Band Pull Apart", "type": "Shoulders"},
  {"id": "237", "value": "Cable Rear Delt Fly", "type": "Shoulders"},
  {
    "id": "238",
    "value": "Kettlebell Turkish Get-Up (Lunge style)",
    "type": "Shoulders"
  },
  {"id": "239", "value": "Reverse Machine Flyes", "type": "Shoulders"},
  {"id": "240", "value": "Machine Bench Press", "type": "Chest"},
  {"id": "241", "value": "Supine Chest Throw", "type": "Triceps"},
  {"id": "242", "value": "Power Jerk", "type": "Quadriceps"},
  {"id": "243", "value": "One-Arm Kettlebell Row", "type": "Middle Back"},
  {"id": "244", "value": "Bradford/Rocky Presses", "type": "Shoulders"},
  {"id": "245", "value": "Anti-Gravity Press", "type": "Shoulders"},
  {"id": "246", "value": "Body Tricep Press", "type": "Triceps"},
  {"id": "247", "value": "Cable Hip Adduction", "type": "Quadriceps"},
  {"id": "248", "value": "Butt Kicks", "type": "Quadriceps"},
  {"id": "249", "value": "Standing Cable Chest Press", "type": "Chest"},
  {"id": "250", "value": "Low Cable Triceps Extension", "type": "Triceps"},
  {"id": "251", "value": "Iliotibial Tract-SMR", "type": "Abductors"},
  {"id": "252", "value": "Dumbbell Clean", "type": "Hamstrings"},
  {"id": "253", "value": "Lying Rear Delt Raise", "type": "Shoulders"},
  {"id": "254", "value": "Recumbent Bike", "type": "Quadriceps"},
  {"id": "255", "value": "Thigh Abductor", "type": "Abductors"},
  {"id": "256", "value": "Standing Barbell Calf Raise", "type": "Calves"},
  {"id": "257", "value": "Walking, Treadmill", "type": "Quadriceps"},
  {"id": "258", "value": "Box Jump (Multiple Response)", "type": "Hamstrings"},
  {"id": "259", "value": "Bent-Knee Hip Raise", "type": "Abdominals"},
  {"id": "260", "value": "Knee Tuck Jump", "type": "Hamstrings"},
  {"id": "261", "value": "Upright Cable Row", "type": "Traps"},
  {"id": "262", "value": "Zercher Squats", "type": "Quadriceps"},
  {"id": "263", "value": "Full Range-Of-Motion Lat Pulldown", "type": "Lats"},
  {"id": "264", "value": "Cable Russian Twists", "type": "Abdominals"},
  {"id": "265", "value": "Lying Triceps Press", "type": "Triceps"},
  {"id": "266", "value": "Standing Dumbbell Reverse Curl", "type": "Biceps"},
  {
    "id": "267",
    "value": "Lying Close-Grip Barbell Triceps Press To Chin",
    "type": "Triceps"
  },
  {"id": "268", "value": "Tate Press", "type": "Triceps"},
  {"id": "269", "value": "Ab Crunch Machine", "type": "Abdominals"},
  {"id": "270", "value": "Wind Sprints", "type": "Abdominals"},
  {"id": "271", "value": "Windmills", "type": "Abductors"},
  {
    "id": "272",
    "value": "Smith Machine Close-Grip Bench Press",
    "type": "Chest"
  },
  {"id": "273", "value": "Incline Inner Biceps Curl", "type": "Biceps"},
  {
    "id": "274",
    "value": "Romanian Deadlift with Kettlebell",
    "type": "Hamstrings"
  },
  {"id": "275", "value": "Smith Machine Hip Raise", "type": "Abdominals"},
  {"id": "276", "value": "Jerk Dip Squat", "type": "Quadriceps"},
  {"id": "277", "value": "Weighted Sit-Ups - With Bands", "type": "Abdominals"},
  {"id": "278", "value": "Depth Jump Leap", "type": "Quadriceps"},
  {"id": "279", "value": "Lying Machine Squat", "type": "Quadriceps"},
  {"id": "280", "value": "Seated Leg Curl", "type": "Hamstrings"},
  {"id": "281", "value": "Alternating Kettlebell Row", "type": "Middle Back"},
  {"id": "282", "value": "Lying T-Bar Row", "type": "Middle Back"},
  {"id": "283", "value": "Band Good Morning", "type": "Hamstrings"},
  {"id": "284", "value": "Kneeling High Pulley Row", "type": "Lats"},
  {
    "id": "285",
    "value": "Standing Bent-Over One-Arm Dumbbell Triceps Extension",
    "type": "Triceps"
  },
  {"id": "286", "value": "Overhead Squat", "type": "Quadriceps"},
  {"id": "287", "value": "Single-Leg Leg Extension", "type": "Quadriceps"},
  {"id": "288", "value": "High Cable Curls", "type": "Biceps"},
  {"id": "289", "value": "Leverage High Row", "type": "Middle Back"},
  {"id": "290", "value": "Overhead Slam", "type": "Lats"},
  {"id": "291", "value": "Dumbbell One-Arm Upright Row", "type": "Shoulders"},
  {"id": "292", "value": "Leg-Up Hamstring Stretch", "type": "Hamstrings"},
  {"id": "293", "value": "Walking High Knees", "type": "Quadriceps"},
  {"id": "294", "value": "Dumbbell Scaption", "type": "Shoulders"},
  {"id": "295", "value": "Cable Wrist Curl", "type": "Forearms"},
  {"id": "296", "value": "Suspended Reverse Crunch", "type": "Abdominals"},
  {"id": "297", "value": "Side Lunge", "type": "Quadriceps"},
  {"id": "298", "value": "Physioball Hip Bridge", "type": "Glutes"},
  {
    "id": "299",
    "value": "See-Saw Press (Alternating Side Press)",
    "type": "Shoulders"
  },
  {"id": "300", "value": "Sumo Deadlift with Chains", "type": "Hamstrings"},
  {"id": "301", "value": "Frog Sit-Ups", "type": "Abdominals"},
  {"id": "302", "value": "Kettlebell Windmill", "type": "Abdominals"},
  {"id": "303", "value": "Cable Deadlifts", "type": "Quadriceps"},
  {"id": "304", "value": "Board Press", "type": "Chest"},
  {"id": "305", "value": "Kettlebell Figure 8", "type": "Abdominals"},
  {"id": "306", "value": "Circus Bell", "type": "Shoulders"},
  {"id": "307", "value": "Incline Bench Pull", "type": "Middle Back"},
  {"id": "308", "value": "Tiger-Bend Push-Up", "type": "Chest"},
  {"id": "309", "value": "Dumbbell Prone Incline Curl", "type": "Biceps"},
  {"id": "310", "value": "Jump Squat", "type": "Quadriceps"},
  {"id": "311", "value": "Shoulder Press - With Bands", "type": "Shoulders"},
  {"id": "312", "value": "Band Assisted Pull-Up", "type": "Lats"},
  {"id": "313", "value": "Barbell Seated Calf Raise", "type": "Calves"},
  {"id": "314", "value": "Balance Board", "type": "Calves"},
  {"id": "315", "value": "Plyo Push-up", "type": "Chest"},
  {"id": "316", "value": "Inchworm", "type": "Hamstrings"},
  {"id": "317", "value": "Cable Preacher Curl", "type": "Biceps"},
  {"id": "318", "value": "Barbell Front Raise", "type": "Shoulders"},
  {"id": "319", "value": "Prowler Sprint", "type": "Hamstrings"},
  {"id": "320", "value": "Seated Dumbbell Inner Biceps Curl", "type": "Biceps"},
  {"id": "321", "value": "Incline Push-Up Close-Grip", "type": "Chest"},
  {"id": "322", "value": "Barbell Squat To A Bench", "type": "Quadriceps"},
  {
    "id": "323",
    "value": "Dumbbell Incline Shoulder Raise",
    "type": "Shoulders"
  },
  {"id": "324", "value": "Standing Inner-Biceps Curl", "type": "Biceps"},
  {"id": "325", "value": "One-Arm Kettlebell Swings", "type": "Hamstrings"},
  {"id": "326", "value": "Pull Through", "type": "Glutes"},
  {"id": "327", "value": "Isometric Neck Exercise - Sides", "type": "Neck"},
  {"id": "328", "value": "One Arm Lat Pulldown", "type": "Lats"},
  {"id": "329", "value": "Dumbbell Walking Lunge", "type": "Quadriceps"},
  {"id": "330", "value": "Lateral Bound", "type": "Adductors"},
  {"id": "331", "value": "Two-Arm Kettlebell Row", "type": "Middle Back"},
  {"id": "332", "value": "One Arm Floor Press", "type": "Triceps"},
  {"id": "333", "value": "Wide-Grip Decline Barbell Pullover", "type": "Chest"},
  {"id": "334", "value": "Smith Machine Decline Press", "type": "Chest"},
  {"id": "335", "value": "Smith Machine Reverse Calf Raises", "type": "Calves"},
  {
    "id": "336",
    "value": "Standing Front Barbell Raise Over Head",
    "type": "Shoulders"
  },
  {
    "id": "337",
    "value": "Dumbbell Seated One-Leg Calf Raise",
    "type": "Calves"
  },
  {"id": "338", "value": "Cable Incline Pushdown", "type": "Lats"},
  {"id": "339", "value": "Ankle Circles", "type": "Calves"},
  {"id": "340", "value": "Reverse Plate Curls", "type": "Biceps"},
  {
    "id": "341",
    "value": "Lying Close-Grip Bar Curl On High Pulley",
    "type": "Biceps"
  },
  {"id": "342", "value": "Wide-Grip Pulldown Behind The Neck", "type": "Lats"},
  {"id": "343", "value": "Seated Leg Tucks", "type": "Abdominals"},
  {"id": "344", "value": "Cable Incline Triceps Extension", "type": "Triceps"},
  {"id": "345", "value": "Smith Machine Pistol Squat", "type": "Quadriceps"},
  {"id": "346", "value": "Wide-Stance Leg Press", "type": "Quadriceps"},
  {"id": "347", "value": "London Bridges", "type": "Lats"},
  {"id": "348", "value": "Barbell Side Bend", "type": "Abdominals"},
  {"id": "349", "value": "90-Degree Jump Squat Twist", "type": "Quadriceps"},
  {"id": "350", "value": "Pin Presses", "type": "Triceps"},
  {"id": "351", "value": "Alternate Leg Diagonal Bound", "type": "Quadriceps"},
  {"id": "352", "value": "Clean Shrug", "type": "Traps"},
  {"id": "353", "value": "Kettlebell Arnold Press", "type": "Shoulders"},
  {"id": "354", "value": "Upward Stretch", "type": "Shoulders"},
  {"id": "355", "value": "Barbell Guillotine Bench Press", "type": "Chest"},
  {"id": "356", "value": "Standing Toe Touches", "type": "Hamstrings"},
  {"id": "357", "value": "Shoulder Circles", "type": "Shoulders"},
  {
    "id": "358",
    "value": "Standing Hamstring and Calf Stretch",
    "type": "Hamstrings"
  },
  {"id": "359", "value": "Side To Side Push-Up", "type": "Chest"},
  {"id": "360", "value": "Scapular Pull-Up", "type": "Traps"},
  {"id": "361", "value": "One-Arm Flat Bench Dumbbell Flye", "type": "Chest"},
  {"id": "362", "value": "Suspended Split Squat", "type": "Quadriceps"},
  {"id": "363", "value": "Barbell Incline Shoulder Raise", "type": "Shoulders"},
  {"id": "364", "value": "Push Press - Behind the Neck", "type": "Shoulders"},
  {"id": "365", "value": "Standing Towel Triceps Extension", "type": "Triceps"},
  {"id": "366", "value": "Weighted Ball Side Bend", "type": "Abdominals"},
  {
    "id": "367",
    "value": "Isometric Neck Exercise - Front And Back",
    "type": "Neck"
  },
  {"id": "368", "value": "Atlas Stone Trainer", "type": "Lower Back"},
  {"id": "369", "value": "Peroneals-SMR", "type": "Calves"},
  {
    "id": "370",
    "value": "Extended Range One-Arm Kettlebell Floor Press",
    "type": "Chest"
  },
  {"id": "371", "value": "Lying Hamstring", "type": "Hamstrings"},
  {"id": "372", "value": "Snatch Shrug", "type": "Traps"},
  {
    "id": "373",
    "value": "Seated Dumbbell Palms-Up Wrist Curl",
    "type": "Forearms"
  },
  {"id": "374", "value": "Sit Squats", "type": "Quadriceps"},
  {"id": "375", "value": "Crucifix", "type": "Shoulders"},
  {"id": "376", "value": "Alternating Floor Press", "type": "Chest"},
  {"id": "377", "value": "Hip Lift with Band", "type": "Glutes"},
  {"id": "378", "value": "Hamstring Stretch", "type": "Hamstrings"},
  {"id": "379", "value": "Shoulder Stretch", "type": "Shoulders"},
  {"id": "380", "value": "One Arm Against Wall", "type": "Lats"},
  {
    "id": "381",
    "value": "Standing Gastrocnemius Calf Stretch",
    "type": "Calves"
  },
  {"id": "382", "value": "Hamstring-SMR", "type": "Hamstrings"},
  {"id": "383", "value": "Tricep Side Stretch", "type": "Triceps"},
  {"id": "384", "value": "Kneeling Hip Flexor", "type": "Quadriceps"},
  {"id": "385", "value": "Hug A Ball", "type": "Lower Back"},
  {"id": "386", "value": "Dancer's Stretch", "type": "Lower Back"},
  {"id": "387", "value": "Elbow Circles", "type": "Shoulders"},
  {"id": "388", "value": "Calf Stretch Hands Against Wall", "type": "Calves"},
  {"id": "389", "value": "Spinal Stretch", "type": "Middle Back"},
  {"id": "390", "value": "Supine Two-Arm Overhead Throw", "type": "Abdominals"},
  {"id": "391", "value": "Child's Pose", "type": "Lower Back"},
  {
    "id": "392",
    "value": "Partner Farmer's Walk Competition",
    "type": "Forearms"
  },
  {"id": "393", "value": "Seated Hamstring", "type": "Hamstrings"},
  {"id": "394", "value": "Kneeling Forearm Stretch", "type": "Forearms"},
  {"id": "395", "value": "Iron Crosses (stretch)", "type": "Quadriceps"},
  {
    "id": "396",
    "value": "Seated Floor Hamstring Stretch",
    "type": "Hamstrings"
  },
  {"id": "397", "value": "Arm Circles", "type": "Shoulders"},
  {"id": "398", "value": "Pelvic Tilt Into Bridge", "type": "Lower Back"},
  {"id": "399", "value": "All Fours Quad Stretch", "type": "Quadriceps"},
  {"id": "400", "value": "Cable Judo Flip", "type": "Abdominals"},
  {"id": "401", "value": "Torso Rotation", "type": "Abdominals"},
  {"id": "402", "value": "Cat Stretch", "type": "Lower Back"},
  {"id": "403", "value": "Calf Stretch Elbows Against Wall", "type": "Calves"},
  {"id": "404", "value": "Behind Head Chest Stretch", "type": "Chest"},
  {"id": "405", "value": "Calf Raises - With Bands", "type": "Calves"},
  {"id": "406", "value": "Ankle On The Knee", "type": "Glutes"},
  {"id": "407", "value": "Triceps Stretch", "type": "Triceps"},
  {"id": "408", "value": "Elbows Back", "type": "Chest"},
  {"id": "409", "value": "Seated Barbell Twist", "type": "Abdominals"},
  {"id": "410", "value": "One Half Locust", "type": "Quadriceps"},
  {"id": "411", "value": "Latissimus Dorsi-SMR", "type": "Lats"},
  {"id": "412", "value": "Lower Back-SMR", "type": "Lower Back"},
  {"id": "413", "value": "Hug Knees To Chest", "type": "Lower Back"},
  {"id": "414", "value": "World's Greatest Stretch", "type": "Hamstrings"},
  {
    "id": "415",
    "value": "Standing Soleus And Achilles Stretch",
    "type": "Calves"
  },
  {"id": "416", "value": "Upper Back Stretch", "type": "Middle Back"},
  {"id": "417", "value": "Split Squats", "type": "Hamstrings"},
  {"id": "418", "value": "Chair Upper Body Stretch", "type": "Shoulders"},
  {"id": "419", "value": "Seated Calf Stretch", "type": "Calves"},
  {"id": "420", "value": "Downward Facing Balance", "type": "Glutes"},
  {"id": "421", "value": "Kneeling Arm Drill", "type": "Shoulders"},
  {"id": "422", "value": "Adductor", "type": "Adductors"},
  {"id": "423", "value": "Crossover Reverse Lunge", "type": "Lower Back"},
  {"id": "424", "value": "Overhead Stretch", "type": "Abdominals"},
  {"id": "425", "value": "Side Lying Groin Stretch", "type": "Adductors"},
  {"id": "426", "value": "Chin To Chest Stretch", "type": "Neck"},
  {"id": "427", "value": "Middle Back Stretch", "type": "Middle Back"},
  {"id": "428", "value": "Runner's Stretch", "type": "Hamstrings"},
  {"id": "429", "value": "Knee Across The Body", "type": "Glutes"},
  {"id": "430", "value": "Medicine Ball Scoop Throw", "type": "Shoulders"},
  {"id": "431", "value": "On Your Side Quad Stretch", "type": "Quadriceps"},
  {"id": "432", "value": "Chair Lower Back Stretch", "type": "Lats"},
  {"id": "433", "value": "Brachialis-SMR", "type": "Biceps"},
  {"id": "434", "value": "Standing Pelvic Tilt", "type": "Lower Back"},
  {"id": "435", "value": "Double Kettlebell Windmill", "type": "Shoulders"},
  {
    "id": "436",
    "value": "Chest And Front Of Shoulder Stretch",
    "type": "Chest"
  },
  {"id": "437", "value": "Neck-SMR", "type": "Neck"},
  {"id": "438", "value": "One Knee To Chest", "type": "Glutes"},
  {"id": "439", "value": "Wrist Circles", "type": "Forearms"},
  {"id": "440", "value": "Side-Lying Floor Stretch", "type": "Lats"}
];
