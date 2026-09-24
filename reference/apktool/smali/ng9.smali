.class public abstract Lng9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lkt9;

.field public static final b:Lqg9;

.field public static final c:Lug9;

.field public static final d:Lgs9;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkt9;

    .line 2
    .line 3
    const-class v1, Llg9;

    .line 4
    .line 5
    const-class v2, Lw99;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lkt9;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lng9;->a:Lkt9;

    .line 11
    .line 12
    new-instance v0, Lqg9;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lng9;->b:Lqg9;

    .line 18
    .line 19
    new-instance v0, Lug9;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lng9;->c:Lug9;

    .line 25
    .line 26
    invoke-static {}, Lrw9;->y()La89;

    .line 27
    .line 28
    .line 29
    new-instance v0, Lgs9;

    .line 30
    .line 31
    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    .line 32
    .line 33
    const/4 v2, 0x2

    .line 34
    invoke-direct {v0, v1, v2}, Lgs9;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lng9;->d:Lgs9;

    .line 38
    .line 39
    return-void
.end method
