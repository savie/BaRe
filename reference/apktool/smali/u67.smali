.class public Lu67;
.super Ldn0;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu67$b;,
        Lu67$a;
    }
.end annotation

.annotation runtime Ljk5;
    reference = "http://s3.amazonaws.com/doc/2006-03-01/"
.end annotation

.annotation runtime Lno6;
    name = "SelectObjectContentRequest"
.end annotation


# instance fields
.field private e:Lu67$a;
    .annotation runtime Lat2;
        name = "RequestProgress"
        required = false
    .end annotation
.end field

.field private f:Lu67$b;
    .annotation runtime Lat2;
        name = "ScanRange"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLoc4;Lgv5;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Ldn0;-><init>(Ljava/lang/String;Loc4;Lgv5;)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    new-instance p1, Lu67$a;

    .line 7
    .line 8
    invoke-direct {p1}, Lu67$a;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lu67;->e:Lu67$a;

    .line 12
    .line 13
    :cond_0
    if-nez p5, :cond_2

    .line 14
    .line 15
    if-eqz p6, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    return-void

    .line 19
    :cond_2
    :goto_0
    new-instance p1, Lu67$b;

    .line 20
    .line 21
    invoke-direct {p1, p5, p6}, Lu67$b;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lu67;->f:Lu67$b;

    .line 25
    .line 26
    return-void
.end method
