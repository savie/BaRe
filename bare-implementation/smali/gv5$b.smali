.class public Lgv5$b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgv5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation runtime Lno6;
    name = "JSON"
.end annotation


# instance fields
.field private a:Ljava/lang/Character;
    .annotation runtime Lat2;
        name = "RecordDelimiter"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Character;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgv5$b;->a:Ljava/lang/Character;

    .line 5
    .line 6
    return-void
.end method
