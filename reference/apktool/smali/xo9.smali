.class public abstract Lxo9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lkt9;

.field public static final b:Lgs9;

.field public static final c:Lbp9;

.field public static final d:Lzo9;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkt9;

    .line 2
    .line 3
    const-class v1, Lto9;

    .line 4
    .line 5
    const-class v2, Lm1a;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lkt9;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lxo9;->a:Lkt9;

    .line 11
    .line 12
    invoke-static {}, Lyw9;->y()La89;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lgs9;

    .line 16
    .line 17
    const-string v1, "type.googleapis.com/google.crypto.tink.AesSivKey"

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-direct {v0, v1, v2}, Lgs9;-><init>(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lxo9;->b:Lgs9;

    .line 24
    .line 25
    new-instance v0, Lbp9;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lxo9;->c:Lbp9;

    .line 31
    .line 32
    new-instance v0, Lzo9;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lxo9;->d:Lzo9;

    .line 38
    .line 39
    return-void
.end method
