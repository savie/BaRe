.class public interface abstract annotation Lgt2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lgt2;
        data = false
        empty = true
        entry = ""
        inline = false
        name = ""
        required = true
        type = V
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract data()Z
.end method

.method public abstract empty()Z
.end method

.method public abstract entry()Ljava/lang/String;
.end method

.method public abstract inline()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract required()Z
.end method

.method public abstract type()Ljava/lang/Class;
.end method
