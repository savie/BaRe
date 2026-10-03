package com.bare.cloud.control;

/** One read-mostly backend control node. No generic appData CRUD is exposed. */
public interface RemoteControlNode<T> {
    T read();
}
