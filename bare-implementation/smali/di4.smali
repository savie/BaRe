.class public final Ldi4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Ldi4;->a:Ljava/util/HashMap;

    .line 13
    .line 14
    new-instance p0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance p1, Ljava/util/HashMap;

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Ldi4;->a:Ljava/util/HashMap;

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
