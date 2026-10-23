.class public final Lei6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic j:I


# instance fields
.field public final a:Ll90;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Ljava/lang/String;

.field public final f:Landroid/net/Uri;

.field public final g:Lorg/json/JSONObject;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v6, "jwks"

    .line 2
    .line 3
    const-string v7, "token_endpoint_auth_method"

    .line 4
    .line 5
    const-string v0, "redirect_uris"

    .line 6
    .line 7
    const-string v1, "response_types"

    .line 8
    .line 9
    const-string v2, "grant_types"

    .line 10
    .line 11
    const-string v3, "application_type"

    .line 12
    .line 13
    const-string v4, "subject_type"

    .line 14
    .line 15
    const-string v5, "jwks_uri"

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lji8;->b([Ljava/lang/String;)Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(Ll90;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/net/Uri;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lei6;->a:Ll90;

    .line 5
    .line 6
    iput-object p2, p0, Lei6;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput-object p3, p0, Lei6;->c:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Lei6;->d:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, Lei6;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lei6;->f:Landroid/net/Uri;

    .line 15
    .line 16
    iput-object p7, p0, Lei6;->g:Lorg/json/JSONObject;

    .line 17
    .line 18
    iput-object p8, p0, Lei6;->h:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p9, p0, Lei6;->i:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    return-void
.end method
