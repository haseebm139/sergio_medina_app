import 'package:flutter/material.dart';
import 'package:sergio_medina_app/utils.dart';

class HelpscreenQuestions extends StatefulWidget {
  final String firsttext;
  final String secondtext;

  const HelpscreenQuestions({super.key, required this.firsttext, required this.secondtext});

  @override
  _HelpscreenQuestionsState createState() => _HelpscreenQuestionsState();
}

class _HelpscreenQuestionsState extends State<HelpscreenQuestions> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  widget.firsttext,
                  style: TextStyle(
                      fontFamily: 'Proxima',
                      fontSize: 13, color: Grey, fontWeight: FontWeight.w600),
                ),
              ),
              IconButton(
                icon: Icon(
                  color: Colors.grey,
                  isVisible ? Icons.keyboard_arrow_up_outlined : Icons.keyboard_arrow_down_outlined,
                ),
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
              ),
            ],
          ),
          Visibility(
            visible: isVisible,
            child: Text(
              widget.secondtext,
              style: TextStyle(fontSize: 12, color: Grey, fontWeight: FontWeight.w400,
                fontFamily: 'Proxima',),
            ),
          ),
        ],
      ),
    );
  }
}