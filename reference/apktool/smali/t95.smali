.class public final Lt95;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Les5;


# instance fields
.field public final a:Lzy4;

.field public final b:Les5;

.field public c:I


# direct methods
.method public constructor <init>(Lzy4;Les5;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lt95;->c:I

    .line 6
    .line 7
    iput-object p1, p0, Lt95;->a:Lzy4;

    .line 8
    .line 9
    iput-object p2, p0, Lt95;->b:Les5;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lt95;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lt95;->a:Lzy4;

    .line 4
    .line 5
    iget v1, v1, Lzy4;->g:I

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iput v1, p0, Lt95;->c:I

    .line 10
    .line 11
    iget-object p0, p0, Lt95;->b:Les5;

    .line 12
    .line 13
    invoke-interface {p0, p1}, Les5;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
