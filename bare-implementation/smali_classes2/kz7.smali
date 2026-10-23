.class public final Lkz7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcz5;

.field public c:[Ljava/lang/String;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/gun0912/tedpermission/provider/TedPermissionProvider;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object v0, p0, Lkz7;->a:Landroid/content/Context;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lkz7;->d:Z

    .line 10
    .line 11
    const v1, 0x7f13056b

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lkz7;->e:Ljava/lang/String;

    .line 19
    .line 20
    const v1, 0x7f13056c

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lkz7;->f:Ljava/lang/String;

    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lkz7;->g:I

    .line 31
    .line 32
    return-void
.end method
