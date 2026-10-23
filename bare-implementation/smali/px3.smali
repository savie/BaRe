.class public abstract Lpx3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Liu5;

.field public static final b:Liu5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    .line 2
    .line 3
    sget-object v1, Lpd2;->c:Lpd2;

    .line 4
    .line 5
    invoke-static {v1, v0}, Liu5;->a(Ljava/lang/Object;Ljava/lang/String;)Liu5;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lpx3;->a:Liu5;

    .line 10
    .line 11
    const-string v0, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    .line 12
    .line 13
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-static {v1, v0}, Liu5;->a(Ljava/lang/Object;Ljava/lang/String;)Liu5;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lpx3;->b:Liu5;

    .line 20
    .line 21
    return-void
.end method
