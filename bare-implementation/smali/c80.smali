.class public abstract Lc80;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Loe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lb05;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lc19;

    .line 7
    .line 8
    invoke-direct {v1}, Lc19;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Loe;

    .line 12
    .line 13
    const-string v3, "Auth.GOOGLE_SIGN_IN_API"

    .line 14
    .line 15
    invoke-direct {v2, v3, v1, v0}, Loe;-><init>(Ljava/lang/String;Lyc9;Lb05;)V

    .line 16
    .line 17
    .line 18
    sput-object v2, Lc80;->a:Loe;

    .line 19
    .line 20
    return-void
.end method
