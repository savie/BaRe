.class public Lpm6$e;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpm6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation runtime Lno6;
    name = "S3"
.end annotation


# instance fields
.field private a:Lq5;
    .annotation runtime Lat2;
        name = "AccessControlList"
        required = false
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "BucketName"
    .end annotation
.end field

.field private c:Lpm6$a;
    .annotation runtime Lat2;
        name = "CannedACL"
        required = false
    .end annotation
.end field

.field private d:Lpm6$b;
    .annotation runtime Lat2;
        name = "Encryption"
        required = false
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "Prefix"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "StorageClass"
        required = false
    .end annotation
.end field

.field private g:Ljx7;
    .annotation runtime Lat2;
        name = "Tagging"
        required = false
    .end annotation
.end field

.field private h:Lpm6$h;
    .annotation runtime Lat2;
        name = "UserMetadata"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lq5;Lpm6$a;Lpm6$b;Ljava/lang/String;Ljx7;Lpm6$h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Bucket name must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lpm6$e;->b:Ljava/lang/String;

    .line 10
    .line 11
    const-string p1, "Prefix must not be null"

    .line 12
    .line 13
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lpm6$e;->e:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p3, p0, Lpm6$e;->a:Lq5;

    .line 19
    .line 20
    iput-object p4, p0, Lpm6$e;->c:Lpm6$a;

    .line 21
    .line 22
    iput-object p5, p0, Lpm6$e;->d:Lpm6$b;

    .line 23
    .line 24
    iput-object p6, p0, Lpm6$e;->f:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p7, p0, Lpm6$e;->g:Ljx7;

    .line 27
    .line 28
    iput-object p8, p0, Lpm6$e;->h:Lpm6$h;

    .line 29
    .line 30
    return-void
.end method
