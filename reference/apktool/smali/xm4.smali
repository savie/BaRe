.class public interface abstract annotation Lxm4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lxm4;
        defaultImpl = Lxm4;
        include = .enum Ltm4;->a:Ltm4;
        property = ""
        requireTypeIdForSubtypes = .enum Lfu5;->b:Lfu5;
        visible = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract defaultImpl()Ljava/lang/Class;
.end method

.method public abstract include()Ltm4;
.end method

.method public abstract property()Ljava/lang/String;
.end method

.method public abstract requireTypeIdForSubtypes()Lfu5;
.end method

.method public abstract use()Lum4;
.end method

.method public abstract visible()Z
.end method
