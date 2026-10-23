.class public abstract Lzg9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lkt9;

.field public static final b:Lbh9;

.field public static final c:Lgs9;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkt9;

    .line 2
    .line 3
    const-class v1, Lvg9;

    .line 4
    .line 5
    const-class v2, Lw99;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lkt9;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lzg9;->a:Lkt9;

    .line 11
    .line 12
    new-instance v0, Lbh9;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lzg9;->b:Lbh9;

    .line 18
    .line 19
    invoke-static {}, Lex9;->y()La89;

    .line 20
    .line 21
    .line 22
    new-instance v0, Lgs9;

    .line 23
    .line 24
    const-string v1, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-direct {v0, v1, v2}, Lgs9;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lzg9;->c:Lgs9;

    .line 31
    .line 32
    return-void
.end method
