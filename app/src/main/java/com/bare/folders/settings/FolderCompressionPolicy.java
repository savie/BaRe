package com.bare.folders.settings;
public final class FolderCompressionPolicy {public static final String KEY="compression_level_folders";public final int level;public FolderCompressionPolicy(int l){level=l;}public static FolderCompressionPolicy resolve(int stored,int def,int min,int max){return new FolderCompressionPolicy(stored<min||stored>max?def:stored);}}
