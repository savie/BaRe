.class public final Ljg1;
.super Lxh8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic q:Lng1;


# direct methods
.method public constructor <init>(Lng1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ljg1;->q:Lng1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDataChange(Leb2;)V
    .locals 3

    .line 1
    sget-object v0, Lzn4;->a:Lzn4;

    .line 2
    .line 3
    new-instance v0, Lig1;

    .line 4
    .line 5
    iget-object p0, p0, Ljg1;->q:Lng1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v2, v1}, Lig1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljv1;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v2, v0}, Lzn4;->b(Lqh4;Lqt3;)Lbl7;

    .line 13
    .line 14
    .line 15
    return-void
.end method
