import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../../../domain/user_repository/src/models/models.dart';

class ProfileItem extends ConsumerStatefulWidget {
  const ProfileItem({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileItemState();
}

class _ProfileItemState extends ConsumerState<ProfileItem> {
  late bool edit;
  late TextEditingController facultyNameController;

  @override
  void initState() {
    super.initState();
    edit = false;
    facultyNameController = TextEditingController();
  }

  @override
  void dispose() {
    facultyNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final universityName = widget.user.universityParentName != null
        ? "${widget.user.universityParentName} ${widget.user.universityAcronym != null ? "(${widget.user.universityAcronym}), " : ', '} ${widget.user.universityName}"
        : "${widget.user.universityName} ${widget.user.universityAcronym != null ? "(${widget.user.universityAcronym})" : ''}";

    return Container(
        color: const Color.fromRGBO(226, 47, 47, 1),
        padding: const EdgeInsets.symmetric(vertical: 16),
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
                top: 32,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(5, 7),
                            blurRadius: 20,
                            spreadRadius: 5)
                      ],
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      Text(
                        "@${widget.user.username}",
                        style: const TextStyle(
                            color: Color.fromRGBO(63, 66, 84, 1),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        universityName,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        controller: facultyNameController,
                        maxLength: 40,
                        enabled: edit,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.8,
                        ),
                        decoration: InputDecoration(
                            fillColor: Colors.transparent,
                            border: InputBorder.none,
                            hintText:
                                widget.user.universityFaculty ?? 'faculty name',
                            hintStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.8,
                            ),
                            counter: const SizedBox.shrink()),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProfileStatProperties(
                              ProfileStatItem.likes, widget.user.likesGiven),
                          ProfileStatProperties(
                              ProfileStatItem.total, widget.user.totalChats),
                          ProfileStatProperties(ProfileStatItem.replies,
                              widget.user.repliesGiven),
                        ].map((ProfileStatProperties profileStatPropery) {
                          return Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                  width: 1,
                                  color: const Color.fromARGB(63, 66, 84, 1)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(profileStatPropery.statString,
                                    style: const TextStyle(
                                        fontSize: 12.8,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center),
                                Text(profileStatPropery.text,
                                    style: const TextStyle(
                                        fontSize: 12.8,
                                        color: Color.fromARGB(63, 66, 84, 1),
                                        fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.center)
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                      InkWell(
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(63, 66, 84, 1),
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(edit ? 'save profile' : 'edit profile',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                      )
                    ],
                  ),
                )),
            Positioned(
                top: 16,
                child: InkWell(
                  onTap: () => print('object'),
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: widget.user.profileImage == null
                          ? Image.asset('assets/images/defaultprofile.jpg',
                              fit: BoxFit.cover)
                          : Image.network(widget.user.profileImage!,
                              fit: BoxFit.cover),
                    ),
                  ),
                )),
            edit
                ? Positioned(
                    top: 16,
                    child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, .4),
                      ),
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.black,
                      ),
                    ))
                : const SizedBox.shrink()
          ],
        ));
  }
}

class ProfileStatProperties {
  final ProfileStatItem profileStatItem;
  final int stat;

  ProfileStatProperties(this.profileStatItem, this.stat);

  get text {
    switch (profileStatItem) {
      case ProfileStatItem.likes:
        return "likes given";
      case ProfileStatItem.total:
        return "total chats";
      case ProfileStatItem.replies:
        return "replies given";
    }
  }

  get statString => statString.toString();
}

enum ProfileStatItem { likes, total, replies }
