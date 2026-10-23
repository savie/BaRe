.class public final Lqg5$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqg5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lpg5$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lqg5$a;->a:Lpg5$a;

    .line 6
    .line 7
    sget v0, Lpg5;->n:I

    .line 8
    .line 9
    new-instance v0, Lpg5$a;

    .line 10
    .line 11
    invoke-direct {v0}, Lpg5$a;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lqg5$a;->a:Lpg5$a;

    .line 15
    .line 16
    return-void
.end method
