.class public final Lxy8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ley5;

.field public final b:J

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ley5;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;I)V
    .locals 0

    .line 1
    move/from16 p2, p18

    .line 2
    .line 3
    and-int/lit8 p4, p2, 0x4

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const-string p3, ""

    .line 8
    .line 9
    :cond_0
    and-int/lit16 p2, p2, 0x80

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    const-wide/16 p4, -0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move-wide p4, p11

    .line 17
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lxy8;->a:Ley5;

    .line 27
    .line 28
    iput-wide p4, p0, Lxy8;->b:J

    .line 29
    .line 30
    new-instance p1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lxy8;->c:Ljava/util/ArrayList;

    .line 36
    .line 37
    return-void
.end method
