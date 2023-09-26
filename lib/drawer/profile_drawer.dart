// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:core';

import 'package:flutter/foundation.dart';

class Class {
  final String id;
  final String name;
  final String banner;
  final String avatar;
  final List<String> members;

  Class({
    required this.id,
    required this.name,
    required this.banner,
    required this.avatar,
    required this.members,
  });

  Class copyWith({
    String? id,
    String? name,
    String? banner,
    String? avatar,
    List<String>? members,
  }) {
    return Class(
      id: id ?? this.id,
      name: name ?? this.name,
      banner: banner ?? this.banner,
      avatar: avatar ?? this.avatar,
      members: members ?? this.members,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'banner': banner,
      'avatar': avatar,
      'members': members,
    };
  }

  factory Class.fromMap(Map<String, dynamic> map) {
    return Class(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      banner: map['banner'] ?? '',
      avatar: map['avatar'] ?? '',
      members: List<String>.from(map['members']),
    );
  }

  @override
  String toString() {
    return 'Class(id: $id, name: $name, banner: $banner, avatar: $avatar, members: $members, )';
  }

  @override
  bool operator ==(covariant Class other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.banner == banner &&
        other.avatar == avatar &&
        listEquals(other.members, members);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        banner.hashCode ^
        avatar.hashCode ^
        members.hashCode;
  }
}
