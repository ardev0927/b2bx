import 'package:b2bx/config/config.dart';
import 'package:flutter/material.dart';

class LoveIcon {
  Icon normal = Icon(Icons.favorite_border);
  Icon bold = Icon(Icons.favorite);
}

class BookmarkIcon {
  Icon normal = Icon(Icons.bookmark_border);
  Icon bold = Icon(Icons.bookmark);
}

class LockIcon {
  Icon lock = Icon(Icons.lock_outline);
  Icon open = Icon(Icons.lock_open);
}

class ArrowRight {
  Icon arrowRight = Icon(
    Icons.keyboard_arrow_right_outlined,
    color: Config().text10Color,
  );
}

class ArrowLeft {
  Icon arrowLeft = Icon(
    Icons.keyboard_arrow_left_outlined,
    size: 30,
  );
}

class OutIcon {
  Icon out = Icon(
    Icons.logout,
    color: Config().text10Color,
  );
}

class LockIcon2 {
  Icon lock = Icon(
    Icons.lock_outline,
    size: 30,
    color: Config().text10Color,
  );
}

class AccountIcon {
  Icon account = Icon(
    Icons.account_circle_outlined,
    color: Config().text10Color,
    size: 30,
  );
}

class PersonInfoIcon {
  Icon info = Icon(
    Icons.folder_open,
    size: 30,
    color: Config().text10Color,
  );
}

class CustomerSupoprtIcon {
  Icon support = Icon(
    Icons.support_agent,
    size: 30,
    color: Config().text10Color,
  );
}

class VerificationIcon {
  Icon verify = Icon(
    Icons.info_outline,
    size: 30,
    color: Config().text10Color,
  );
}

class VerifiedDocumentIcon {
  Icon document = Icon(
    Icons.insert_drive_file_outlined,
    size: 30,
    color: Config().text10Color,
  );
}

class DeviceManagementIcon {
  Icon device = Icon(
    Icons.devices,
    size: 30,
    color: Config().text10Color,
  );
}

class AddressManagementIcon {
  Icon address = Icon(
    Icons.location_on_outlined,
    size: 30,
    color: Config().text10Color,
  );
}
