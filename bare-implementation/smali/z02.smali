.class public Lz02;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz02$a;,
        Lz02$b;
    }
.end annotation

.annotation runtime Ljk5;
    reference = "http://s3.amazonaws.com/doc/2006-03-01/"
.end annotation

.annotation runtime Lno6;
    name = "CreateBucketConfiguration"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "LocationConstraint"
    .end annotation
.end field

.field private b:Lz02$b;
    .annotation runtime Lat2;
        name = "Location"
        required = false
    .end annotation
.end field

.field private c:Lz02$a;
    .annotation runtime Lat2;
        name = "Bucket"
        required = false
    .end annotation
.end field

.field private d:Ljx7;
    .annotation runtime Lat2;
        name = "Tags"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lz02;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lz02$b;Lz02$a;Ljx7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz02;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lz02;->b:Lz02$b;

    .line 7
    .line 8
    iput-object p3, p0, Lz02;->c:Lz02$a;

    .line 9
    .line 10
    iput-object p4, p0, Lz02;->d:Ljx7;

    .line 11
    .line 12
    return-void
.end method
