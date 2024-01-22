import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: defaultPadding,
            ),
            child: Text(
              "Knowledges",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          KnowledgeText(text: "Flutter, Dart"),
          KnowledgeText(text: "MERN-stack, MEAN-stack"),
          KnowledgeText(text: "VueJs, nuxt3, vue3"),
          KnowledgeText(text: "postgresql, graphql, hasura graphql"),
          KnowledgeText(text: "Gulp, Webpack, Grunt"),
          KnowledgeText(text: "go-graphql-client, golang/gin"),
        ],
      ),
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding / 2),
          Expanded(
            child: Text(
              text,
              overflow: TextOverflow.ellipsis, // or TextOverflow.fade
            ),
          ),
        ],
      ),
    );
  }
}
