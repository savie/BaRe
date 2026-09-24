.class public abstract Lii8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v4, "org.mozilla.firefox_beta"

    .line 2
    .line 3
    const-string v5, "org.mozilla.fenix"

    .line 4
    .line 5
    const-string v0, "com.android.chrome"

    .line 6
    .line 7
    const-string v1, "com.chrome.beta"

    .line 8
    .line 9
    const-string v2, "com.chrome.dev"

    .line 10
    .line 11
    const-string v3, "org.mozilla.firefox"

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lii8;->a:Ljava/util/List;

    .line 22
    .line 23
    return-void
.end method
