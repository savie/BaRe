package com.bare.messagescalls.repository;

/** Device capability boundary for Reference SMS/call-log flows. */
public interface MessagesCallsCapabilityRepository {
    boolean hasTelephony();
    boolean canHandleSms();
    String currentDefaultSmsPackage();
    String previousDefaultSmsPackage();
}
