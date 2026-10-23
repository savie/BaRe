.class public final Lec9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final b:Lec9;


# instance fields
.field public final a:Lx99;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lec9;

    .line 2
    .line 3
    invoke-direct {v0}, Lec9;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lec9;->b:Lec9;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lx99;->b:Lx99;

    .line 2
    .line 3
    sget-object v1, Lfo8;->c:Lfo8;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lfo8;

    .line 8
    .line 9
    const/16 v2, 0x16

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lfo8;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v1, Lfo8;->c:Lfo8;

    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lec9;->a:Lx99;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/u;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lec9;->a:Lx99;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string p0, "com.google.firebase.auth.internal.ProcessDeathHelper"

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lx99;->b(Landroid/content/SharedPreferences;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
