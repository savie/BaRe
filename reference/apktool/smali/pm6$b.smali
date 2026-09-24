.class public Lpm6$b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpm6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation runtime Lno6;
    name = "Encryption"
.end annotation


# instance fields
.field private a:Lpk7;
    .annotation runtime Lat2;
        name = "EncryptionType"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "KMSContext"
        required = false
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lat2;
        name = "KMSKeyId"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpk7;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Encryption type must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lpm6$b;->a:Lpk7;

    .line 10
    .line 11
    iput-object p2, p0, Lpm6$b;->b:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p3, p0, Lpm6$b;->c:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method
