class VoteType {
  final int _value;

  const VoteType._(this._value);

  int get value => _value;

  static VoteType tryParse(int value) {
    switch (value) {
      case 1:
        return up;
      case 0:
        return none;
      case -1:
        return down;
      default:
        return null;
    }
  }

  static const VoteType up = VoteType._(1);
  static const VoteType none = VoteType._(0);
  static const VoteType down = VoteType._(-1);
}

enum PostListingType {
  all,
  local,
  subscribed,
  community,
}

extension PostListingTypeValue on PostListingType {
  String get value {
    switch (this) {
      case PostListingType.all:
        return 'All';
      case PostListingType.local:
        return 'Local';
      case PostListingType.subscribed:
        return 'Subscribed';
      case PostListingType.community:
        return 'Community';
    }
    throw Exception('unreachable');
  }

  int get index {
    switch (this) {
      case PostListingType.all:
        return 0;
      case PostListingType.local:
        return 1;
      case PostListingType.subscribed:
        return 2;
      case PostListingType.community:
        return 3;
    }
    throw Exception('unreachable');
  }
}

enum SortType {
  active,
  hot,
  // ignore: constant_identifier_names
  new_,
  topDay,
  topWeek,
  topMonth,
  topYear,
  topAll,
}

extension SortTypeValue on SortType {
  String get value {
    switch (this) {
      case SortType.active:
        return 'Active';
      case SortType.hot:
        return 'Hot';
      case SortType.new_:
        return 'New';
      case SortType.topDay:
        return 'TopDay';
      case SortType.topWeek:
        return 'TopWeek';
      case SortType.topMonth:
        return 'TopMonth';
      case SortType.topYear:
        return 'TopYear';
      case SortType.topAll:
        return 'TopAll';
    }
    throw Exception('unreachable');
  }

  int get index {
    switch (this) {
      case SortType.active:
        return 0;
      case SortType.hot:
        return 1;
      case SortType.new_:
        return 2;
      case SortType.topDay:
        return 3;
      case SortType.topWeek:
        return 4;
      case SortType.topMonth:
        return 5;
      case SortType.topYear:
        return 6;
      case SortType.topAll:
        return 7;
    }
    throw Exception('unreachable');
  }
}

class SearchType {
  final String _value;

  const SearchType._(this._value);

  String get value => _value;

  static SearchType tryParse(String value) {
    switch (value) {
      case 'All':
        return all;
      case 'Comments':
        return comments;
      case 'Posts':
        return posts;
      case 'Communities':
        return communities;
      case 'Users':
        return users;
      case 'Url':
        return url;
      default:
        return null;
    }
  }

  static const SearchType all = SearchType._('All');
  static const SearchType comments = SearchType._('Comments');
  static const SearchType posts = SearchType._('Posts');
  static const SearchType communities = SearchType._('Communities');
  static const SearchType users = SearchType._('Users');
  static const SearchType url = SearchType._('Url');
}

enum CommentListingType {
  all,
  subscribed,
  community,
}

extension CommentListingTypeValue on CommentListingType {
  String get value {
    switch (this) {
      case CommentListingType.all:
        return 'All';
      case CommentListingType.subscribed:
        return 'Subscribed';
      case CommentListingType.community:
        return 'Community';
    }
    throw Exception('unreachable');
  }
}
