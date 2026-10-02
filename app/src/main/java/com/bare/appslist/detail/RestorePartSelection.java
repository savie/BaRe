package com.bare.appslist.detail;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
public final class RestorePartSelection {
    private final Set<String> parts;
    public RestorePartSelection(Set<String> parts){this.parts=parts==null?Collections.emptySet():Collections.unmodifiableSet(new LinkedHashSet<>(parts));}
    public Set<String> getParts(){return parts;} public boolean contains(String part){return parts.contains(part);}
}