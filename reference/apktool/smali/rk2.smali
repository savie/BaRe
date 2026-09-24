.class public final synthetic Lrk2;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lsk2;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lsk2;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrk2;->a:Lsk2;

    .line 5
    .line 6
    iput p2, p0, Lrk2;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lrk2;->c:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrk2;->c:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lrk2;->a:Lsk2;

    .line 4
    .line 5
    iget-object v1, v1, Lsk2;->b:Lx76;

    .line 6
    .line 7
    iget p0, p0, Lrk2;->b:I

    .line 8
    .line 9
    invoke-interface {v1, p0, v0}, Lx76;->k(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
