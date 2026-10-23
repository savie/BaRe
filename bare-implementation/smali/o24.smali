.class public interface abstract annotation Lo24;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lo24;
        condition = ""
        delivery = .enum Llg4;->a:Llg4;
        enabled = true
        filters = {}
        invocation = Lwh6;
        priority = 0x0
        rejectSubtypes = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract condition()Ljava/lang/String;
.end method

.method public abstract delivery()Llg4;
.end method

.method public abstract enabled()Z
.end method

.method public abstract filters()[Lqc3;
.end method

.method public abstract invocation()Ljava/lang/Class;
.end method

.method public abstract priority()I
.end method

.method public abstract rejectSubtypes()Z
.end method
