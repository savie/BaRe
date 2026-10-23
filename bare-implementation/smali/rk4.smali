.class public interface abstract annotation Lrk4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lrk4;
        content = .enum Lpk4;->a:Lpk4;
        contentFilter = Ljava/lang/Void;
        value = .enum Lpk4;->a:Lpk4;
        valueFilter = Ljava/lang/Void;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract content()Lpk4;
.end method

.method public abstract contentFilter()Ljava/lang/Class;
.end method

.method public abstract value()Lpk4;
.end method

.method public abstract valueFilter()Ljava/lang/Class;
.end method
