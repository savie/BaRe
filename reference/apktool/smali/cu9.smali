.class public abstract Lcu9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lbu9;

.field public static final b:Lkt9;

.field public static final c:Lkt9;

.field public static final d:Lgs9;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lbu9;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcu9;->a:Lbu9;

    .line 7
    .line 8
    new-instance v0, Lkt9;

    .line 9
    .line 10
    const-class v1, Lzt9;

    .line 11
    .line 12
    const-class v2, Lgu9;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lkt9;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcu9;->b:Lkt9;

    .line 18
    .line 19
    new-instance v0, Lkt9;

    .line 20
    .line 21
    const-class v2, La2a;

    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Lkt9;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcu9;->c:Lkt9;

    .line 27
    .line 28
    invoke-static {}, Lcv9;->A()La89;

    .line 29
    .line 30
    .line 31
    new-instance v0, Lgs9;

    .line 32
    .line 33
    const-string v1, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-direct {v0, v1, v2}, Lgs9;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcu9;->d:Lgs9;

    .line 40
    .line 41
    return-void
.end method
