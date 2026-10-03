package com.bare.messagescalls.retention;
import java.util.*;
public final class MessageRetentionPolicy {private final int maxBackups;public MessageRetentionPolicy(int max){maxBackups=Math.max(0,max);}public int getMaxBackups(){return maxBackups;}public <T> List<T> selectDeletions(List<T> b){if(b==null||maxBackups<=0||b.size()<=maxBackups)return Collections.emptyList();return Collections.unmodifiableList(new ArrayList<>(b.subList(0,b.size()-maxBackups)));}}
