.class public interface abstract annotation Lck4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lck4;
        lenient = .enum Lfu5;->b:Lfu5;
        locale = "##default"
        pattern = ""
        shape = .enum Lak4;->p:Lak4;
        timezone = "##default"
        with = {}
        without = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract lenient()Lfu5;
.end method

.method public abstract locale()Ljava/lang/String;
.end method

.method public abstract pattern()Ljava/lang/String;
.end method

.method public abstract shape()Lak4;
.end method

.method public abstract timezone()Ljava/lang/String;
.end method

.method public abstract with()[Lyj4;
.end method

.method public abstract without()[Lyj4;
.end method
