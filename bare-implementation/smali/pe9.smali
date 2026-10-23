.class public final Lpe9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lnt9;


# static fields
.field public static final b:Lpe9;

.field public static final c:Lkt9;

.field public static final d:Lpe9;

.field public static final e:Lkt9;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lpe9;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lpe9;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lpe9;->b:Lpe9;

    .line 8
    .line 9
    new-instance v0, Lkt9;

    .line 10
    .line 11
    const-class v1, Lns9;

    .line 12
    .line 13
    const-class v2, Lw99;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lkt9;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lpe9;->c:Lkt9;

    .line 19
    .line 20
    new-instance v0, Lpe9;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-direct {v0, v1}, Lpe9;-><init>(I)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lpe9;->d:Lpe9;

    .line 27
    .line 28
    new-instance v0, Lkt9;

    .line 29
    .line 30
    const-class v1, Lns9;

    .line 31
    .line 32
    const-class v2, Lm1a;

    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Lkt9;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lpe9;->e:Lkt9;

    .line 38
    .line 39
    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpe9;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .locals 0

    .line 1
    iget p0, p0, Lpe9;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-class p0, Lm1a;

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_0
    const-class p0, Lw99;

    .line 10
    .line 11
    return-object p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
