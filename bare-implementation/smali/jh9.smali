.class public abstract Ljh9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lgs9;

.field public static final b:Lhh9;

.field public static final c:Lkt9;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Ll0a;->y()La89;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lgs9;

    .line 5
    .line 6
    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-direct {v0, v1, v2}, Lgs9;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Ljh9;->a:Lgs9;

    .line 13
    .line 14
    new-instance v0, Lhh9;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Ljh9;->b:Lhh9;

    .line 20
    .line 21
    new-instance v0, Lkt9;

    .line 22
    .line 23
    const-class v1, Lei9;

    .line 24
    .line 25
    const-class v2, Lw99;

    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Lkt9;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Ljh9;->c:Lkt9;

    .line 31
    .line 32
    return-void
.end method
