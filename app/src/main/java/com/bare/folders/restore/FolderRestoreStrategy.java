package com.bare.folders.restore;
public enum FolderRestoreStrategy { MISSING_ONLY, OVERWRITE, FULL_RESTORE;
 public static FolderRestoreStrategy from(String value){if(value==null)return MISSING_ONLY;try{return valueOf(value.trim().toUpperCase(java.util.Locale.ROOT));}catch(Exception e){return MISSING_ONLY;}}
}