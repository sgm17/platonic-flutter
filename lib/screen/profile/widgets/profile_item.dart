import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
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
  late List<ProfileStatProperties> profileStatPropertiesItems;
  late XFile? image;

  @override
  void initState() {
    super.initState();
    edit = false;
    facultyNameController = TextEditingController();
    image = null;

    profileStatPropertiesItems = [
      ProfileStatProperties(
          profileStatItem: ProfileStatItem.likes,
          statValue: widget.user.likesGiven),
      ProfileStatProperties(
          profileStatItem: ProfileStatItem.total,
          statValue: widget.user.totalChats),
      ProfileStatProperties(
          profileStatItem: ProfileStatItem.replies,
          statValue: widget.user.repliesGiven),
    ];
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

    final ImagePicker _picker = ImagePicker();

    return Container(
        color: const Color.fromRGBO(226, 47, 47, 1),
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(5, 7),
                        blurRadius: 20,
                        spreadRadius: 2,
                        color: Color.fromRGBO(0, 0, 0, .4))
                  ],
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      "@${widget.user.username}",
                      style: const TextStyle(
                          color: Color.fromRGBO(63, 66, 84, 1),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      universityName,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      controller: facultyNameController,
                      maxLength: 40,
                      enabled: edit,
                      style: const TextStyle(
                        color: Color.fromRGBO(63, 66, 84, 1),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.4,
                      ),
                      decoration: InputDecoration(
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          fillColor: Colors.transparent,
                          border: InputBorder.none,
                          hintText:
                              widget.user.universityFaculty ?? 'faculty name',
                          hintStyle: const TextStyle(
                            color: Color.fromRGBO(63, 66, 84, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 14.4,
                          ),
                          counter: const SizedBox.shrink()),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: profileStatPropertiesItems
                          .map((ProfileStatProperties profileStatPropery) {
                        return Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                  width: 1,
                                  color: const Color.fromRGBO(63, 66, 84, 1)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(profileStatPropery.statValueString,
                                    style: const TextStyle(
                                        fontSize: 12.8,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center),
                                Text(profileStatPropery.statLabel,
                                    style: const TextStyle(
                                        fontSize: 12.8,
                                        color: Color.fromRGBO(63, 66, 84, 1),
                                        fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.center)
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Material(
                      color: const Color.fromRGBO(63, 66, 84, 1),
                      borderRadius: BorderRadius.circular(6),
                      child: InkWell(
                        onTap: () => setState(() {
                          edit = !edit;
                        }),
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          decoration:
                              const BoxDecoration(color: Colors.transparent),
                          child: Text(edit ? 'save profile' : 'edit profile',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: 32,
                child: InkWell(
                  onTap: () => print('object'),
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: image != null
                          ? Image.file(
                              File(image!.path),
                              fit: BoxFit.cover,
                            )
                          : widget.user.profileImage == null
                              ? Image.asset('assets/images/defaultprofile.jpg',
                                  fit: BoxFit.cover)
                              : Image.network(widget.user.profileImage!,
                                  fit: BoxFit.cover),
                    ),
                  ),
                )),
            edit
                ? Positioned(
                    top: 32,
                    child: InkWell(
                      onTap: () async {
                        final XFile? _image = await _picker.pickImage(
                            source: ImageSource.gallery);
                        setState(() {
                          image = _image;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            color: image == null
                                ? const Color.fromRGBO(0, 0, 0, .4)
                                : null,
                            borderRadius: BorderRadius.circular(30)),
                        child: image == null
                            ? const Icon(
                                Icons.camera_alt,
                                color: Colors.black,
                              )
                            : null,
                      ),
                    ))
                : const SizedBox.shrink()
          ],
        ));
  }
}

class ProfileStatProperties {
  final ProfileStatItem profileStatItem;
  final int statValue;

  ProfileStatProperties(
      {required this.profileStatItem, required this.statValue});

  String get statLabel {
    switch (profileStatItem) {
      case ProfileStatItem.likes:
        return "likes\ngiven";
      case ProfileStatItem.total:
        return "total\nchats";
      case ProfileStatItem.replies:
        return "replies\ngiven";
    }
  }

  String get statValueString => statValue.toString();
}

enum ProfileStatItem { likes, total, replies }
