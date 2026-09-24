.class public interface abstract annotation Lzi4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lzi4;
        creatorVisibility = .enum Lyi4;->d:Lyi4;
        fieldVisibility = .enum Lyi4;->d:Lyi4;
        getterVisibility = .enum Lyi4;->d:Lyi4;
        isGetterVisibility = .enum Lyi4;->d:Lyi4;
        setterVisibility = .enum Lyi4;->d:Lyi4;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract creatorVisibility()Lyi4;
.end method

.method public abstract fieldVisibility()Lyi4;
.end method

.method public abstract getterVisibility()Lyi4;
.end method

.method public abstract isGetterVisibility()Lyi4;
.end method

.method public abstract setterVisibility()Lyi4;
.end method
