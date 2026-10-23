.class public final Ln58;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final i:Ljava/util/HashSet;


# instance fields
.field public final a:Ll58;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/Long;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v5, "id_token"

    .line 4
    .line 5
    const-string v6, "scope"

    .line 6
    .line 7
    const-string v1, "token_type"

    .line 8
    .line 9
    const-string v2, "access_token"

    .line 10
    .line 11
    const-string v3, "expires_in"

    .line 12
    .line 13
    const-string v4, "refresh_token"

    .line 14
    .line 15
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Ln58;->i:Ljava/util/HashSet;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Ll58;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln58;->a:Ll58;

    .line 5
    .line 6
    iput-object p2, p0, Ln58;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Ln58;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Ln58;->d:Ljava/lang/Long;

    .line 11
    .line 12
    iput-object p5, p0, Ln58;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Ln58;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Ln58;->g:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p8, p0, Ln58;->h:Ljava/util/Map;

    .line 19
    .line 20
    return-void
.end method
