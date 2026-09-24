.class public final Lbi9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Le59;


# static fields
.field public static final c:Lbi9;

.field public static final d:Lbi9;

.field public static final e:Lbi9;

.field public static final f:Lbi9;

.field public static final k:Lbi9;

.field public static final n:Lbi9;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lbi9;

    .line 2
    .line 3
    const-string v1, "ASSUME_AES_GCM"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lbi9;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lbi9;->c:Lbi9;

    .line 10
    .line 11
    new-instance v0, Lbi9;

    .line 12
    .line 13
    const-string v1, "ASSUME_XCHACHA20POLY1305"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lbi9;-><init>(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lbi9;->d:Lbi9;

    .line 19
    .line 20
    new-instance v0, Lbi9;

    .line 21
    .line 22
    const-string v1, "ASSUME_CHACHA20POLY1305"

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lbi9;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lbi9;->e:Lbi9;

    .line 28
    .line 29
    new-instance v0, Lbi9;

    .line 30
    .line 31
    const-string v1, "ASSUME_AES_CTR_HMAC"

    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Lbi9;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lbi9;->f:Lbi9;

    .line 37
    .line 38
    new-instance v0, Lbi9;

    .line 39
    .line 40
    const-string v1, "ASSUME_AES_EAX"

    .line 41
    .line 42
    invoke-direct {v0, v1, v2}, Lbi9;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lbi9;->k:Lbi9;

    .line 46
    .line 47
    new-instance v0, Lbi9;

    .line 48
    .line 49
    const-string v1, "ASSUME_AES_GCM_SIV"

    .line 50
    .line 51
    invoke-direct {v0, v1, v2}, Lbi9;-><init>(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lbi9;->n:Lbi9;

    .line 55
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lbi9;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lbi9;->b:Ljava/lang/String;

    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lly8;->e(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lbi9;->b:Ljava/lang/String;

    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lbi9;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lbi9;->b:Ljava/lang/String;

    .line 12
    .line 13
    return-object p0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public zza()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "idToken"

    .line 7
    .line 8
    iget-object p0, p0, Lbi9;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
