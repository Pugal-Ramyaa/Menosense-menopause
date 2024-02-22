import 'package:flutter/material.dart';
import 'package:menopausal_app/constants.dart';
import 'package:menopausal_app/screens/Home/Home.dart';
class SymptomsComponent extends StatefulWidget {
  @override
  _SymptomsComponentState createState() => _SymptomsComponentState();
}
class _SymptomsComponentState extends State<SymptomsComponent> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  Map<String, int> selectedRatings = {
    'Sleeping Problems': 0,
    'Hot Flashes': 0,
    'Night Sweats': 0,
    'Chills': 0,
    'Fatigue': 0,
    'Head Ache': 0,
    'Vaginal Dryness': 0,
    'Mood Swings': 0,
  };
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child:Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(35.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
             SizedBox(height: 20),     
          Row(
            children: <Widget>[
              SizedBox(height: 20),
              SizedBox(width: 10),
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Weight',
                    hintText: 'Enter weight',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter weight';
                    }
                    return null;
                  },
                  // Assuming you have a variable to hold weight
                  // and updating it on form submission
                  onSaved: (value) {
                    // Update weight variable
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: <Widget>[
              SizedBox(width: 10),
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Heart Rate',
                    hintText: 'Enter heart rate',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kPrimaryColor),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter heart rate';
                    }
                    return null;
                  },
                  // Assuming you have a variable to hold heart rate
                  // and updating it on form submission
                  onSaved: (value) {
                    // Update heart rate variable
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
                  SymptomRankingWidget(
                    symptom: 'Sleeping Problems',
                    imageAsset: 'Assets/Images/insomnia.png',
                    information: 'Sleeping problems affect the normal sleep patterns of individuals. These problems can lead to difficulties falling asleep, staying asleep, or experiencing restorative sleep. ',
                    selectedRating: selectedRatings['Sleeping Problems'] ?? 0,
                    onRatingSelected: (rating) {
                      setState(() {
                        selectedRatings['Sleeping Problems'] = rating;
                      });
                    },
                  ),
                  const SizedBox(height: 30),
                  SymptomRankingWidget(
                    symptom: 'Hot Flashes',
                    imageAsset: 'Assets/Images/hot-flashes.png',
                    selectedRating: selectedRatings['Hot Flashes'] ?? 0,
                    onRatingSelected: (rating) {
                      setState(() {
                        selectedRatings['Hot Flashes'] = rating;
                      });
                    },
                    information: 'A hot flash is a feeling of sudden, intense heat on the upper body that lasts anywhere from 30 seconds to several minutes.',
                  ),
                  const SizedBox(height: 30),
                  SymptomRankingWidget(
                    symptom: 'Night Sweats',
                    imageAsset: 'Assets/Images/sweats.png',
                    selectedRating: selectedRatings['Night Sweats'] ?? 0,
                    onRatingSelected: (rating) {
                      setState(() {
                        selectedRatings['Night Sweats'] = rating;
                      });
                    },
                    information: 'Night sweats, also known as sleep hyperhidrosis, refer to episodes of excessive sweating during sleep. These episodes can lead to damp sleepwear and bed linens, and they may disrupt a person sleep. ',
                  ),
                  const SizedBox(height: 30),
                  SymptomRankingWidget(
                    symptom: 'Chills',
                    imageAsset: 'Assets/Images/chills.png',
                    selectedRating: selectedRatings['Chills'] ?? 0,
                    onRatingSelected: (rating) {
                      setState(() {
                        selectedRatings['Chills'] = rating;
                      });
                    },
                    information: 'Chills refer to the sensation of feeling cold, often accompanied by shivering or shaking. ',
                  ),
                  const SizedBox(height: 30),
                  SymptomRankingWidget(
                    symptom: 'Fatigue',
                    imageAsset: 'Assets/Images/dizziness.png',
                    selectedRating: selectedRatings['Fatigue'] ?? 0,
                    onRatingSelected: (rating) {
                      setState(() {
                        selectedRatings['Fatigue'] = rating;
                      });
                    },
                    information: 'Fatigue is a term used to describe a feeling of extreme tiredness, weakness, or exhaustion that can be physical, mental, or both. ',
                  ),
                  const SizedBox(height: 30),
                  SymptomRankingWidget(
                    symptom: 'Head Ache',
                    imageAsset: 'Assets/Images/migraine.png',
                    selectedRating: selectedRatings['Head Ache'] ?? 0,
                    onRatingSelected: (rating) {
                      setState(() {
                        selectedRatings['Head Ache'] = rating;
                      });
                    },
                    information: 'A headache is a pain or discomfort in the head or upper neck.',
                  ),
                  const SizedBox(height: 30),
                  SymptomRankingWidget(
                    symptom: 'Vaginal Dryness',
                    imageAsset: 'Assets/Images/menopause.png',
                    selectedRating: selectedRatings['Vaginal dryness'] ?? 0,
                    onRatingSelected: (rating) {
                      setState(() {
                        selectedRatings['Vaginal dryness'] = rating;
                      });
                    },
                    information: 'Vaginal dryness is a condition characterized by a lack of moisture and lubrication in the vagina. It occurs when the natural lubrication produced by the vaginal walls decreases. This can lead to discomfort, itching, and pain.',
                  ),
                  const SizedBox(height: 30),
                  SymptomRankingWidget(
                    symptom: 'Mood Swings',
                    imageAsset: 'Assets/Images/mood-swings.png',
                    selectedRating: selectedRatings['Mood Swings'] ?? 0,
                    onRatingSelected: (rating) {
                      setState(() {
                        selectedRatings['Mood Swings'] = rating;
                      });
                    },
                    information: 'Mood swings refer to abrupt and often unpredictable changes in a person emotional state or mood. These fluctuations can involve shifts between various emotions, such as happiness, sadness, anger, or irritability. ',
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
            width: 150, // Adjust the width as needed
            child: TextButton(
              onPressed: () => _handleSubmit(context),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: kPrimaryColor,
              ),
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
      
    ),
    );
  }
  void _handleSubmit(BuildContext context) {
    if (_formKey.currentState == null) {
      print("Error: _formKey.currentState is null");
      return;
    }
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "Assets/Images/success.png", // Replace with your image path
                  width: 200,
                  height: 200,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Successfully Submitted',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: const Center(
                  child: Text("OK"),
                ),
              ),
            ],
          );
        },
      );
    }
  }
}

class SymptomRankingWidget extends StatefulWidget {
  final String symptom;
  final String imageAsset;
  final String information;
  final int selectedRating;
  final ValueChanged<int> onRatingSelected;

  SymptomRankingWidget({
    required this.symptom,
    required this.imageAsset,
    required this.information,
    required this.selectedRating, // Update constructor
    required this.onRatingSelected, // Update constructor
  });


  @override
  _SymptomRankingWidgetState createState() => _SymptomRankingWidgetState(selectedRating);
}

class _SymptomRankingWidgetState extends State<SymptomRankingWidget> {
  late int selectedRating;
  _SymptomRankingWidgetState(this.selectedRating);
  void _showInfoDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(widget.symptom),
          content: Text(
            widget.information,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            // Logo on the left corner
            Image.asset(
              widget.imageAsset, // Replace with your logo asset path
              width: 30,
              height: 30,
            ),
            const SizedBox(width: 10),
            // Symptom name
            Text(
              widget.symptom,
              style: const TextStyle(fontSize: 16),
            ),
            const Spacer(),
            // Information logo on the right corner
            GestureDetector(
              onTap: _showInfoDialog,
              child: Container(
                width: 30,
                height: 30,
                child: const Center(
                  child: Icon(
                    Icons.info,
                    color: kPrimaryColor, // Replace with your desired icon color
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: List.generate(
            10,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedRating = index + 1;
                });
                widget.onRatingSelected(selectedRating);
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index < selectedRating
                      ? kPrimaryLightColor
                      : Colors.transparent,
                  border: Border.all(
                    color: kPrimaryLightColor,
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
  
}
