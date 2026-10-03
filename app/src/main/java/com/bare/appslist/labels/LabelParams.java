package com.bare.appslist.labels;

/** BaRe-owned label definition matching the locked Reference field contract. */
public final class LabelParams {
    public final String id;
    public final String name;
    public final String color;

    public LabelParams(String id, String name, String color) {
        this.id = id;
        this.name = name;
        this.color = color == null ? "#000000" : color;
    }

    public boolean isValid() {
        return id != null && !id.trim().isEmpty()
                && name != null && !name.trim().isEmpty()
                && color != null && !color.trim().isEmpty();
    }
}
