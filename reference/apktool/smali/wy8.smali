.class public abstract Lwy8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lxm5;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    new-instance v1, Lxm5;

    .line 4
    .line 5
    sget v2, Lg51;->a:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-direct {v1, v0}, Lxm5;-><init>(Ljava/nio/charset/Charset;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lwy8;->a:Lxm5;

    .line 17
    .line 18
    return-void
.end method
