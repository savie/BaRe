.class public Lu67$b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation runtime Lno6;
    name = "ScanRange"
.end annotation


# instance fields
.field private a:Ljava/lang/Long;
    .annotation runtime Lat2;
        name = "Start"
        required = false
    .end annotation
.end field

.field private b:Ljava/lang/Long;
    .annotation runtime Lat2;
        name = "End"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu67$b;->a:Ljava/lang/Long;

    .line 5
    .line 6
    iput-object p2, p0, Lu67$b;->b:Ljava/lang/Long;

    .line 7
    .line 8
    return-void
.end method
