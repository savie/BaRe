.class public final Ldy3;
.super Landroid/content/ContextWrapper;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final k:Lgv3;


# instance fields
.field public final a:Lm35;

.field public final b:Lqy3;

.field public final c:Lns0;

.field public final d:Lus2;

.field public final e:Ljava/util/List;

.field public final f:Lk50;

.field public final g:Lzw2;

.field public final h:Lky3;

.field public final i:I

.field public j:Lbl6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lgv3;

    .line 2
    .line 3
    invoke-direct {v0}, Lea8;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ldy3;->k:Lgv3;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lm35;Lni6;Lns0;Lus2;Lk50;Ljava/util/List;Lzw2;Lky3;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Ldy3;->a:Lm35;

    .line 9
    .line 10
    iput-object p4, p0, Ldy3;->c:Lns0;

    .line 11
    .line 12
    iput-object p5, p0, Ldy3;->d:Lus2;

    .line 13
    .line 14
    iput-object p7, p0, Ldy3;->e:Ljava/util/List;

    .line 15
    .line 16
    iput-object p6, p0, Ldy3;->f:Lk50;

    .line 17
    .line 18
    iput-object p8, p0, Ldy3;->g:Lzw2;

    .line 19
    .line 20
    iput-object p9, p0, Ldy3;->h:Lky3;

    .line 21
    .line 22
    iput p10, p0, Ldy3;->i:I

    .line 23
    .line 24
    new-instance p1, Lqy3;

    .line 25
    .line 26
    invoke-direct {p1, p3}, Lqy3;-><init>(Lry3;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Ldy3;->b:Lqy3;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a()Lmi6;
    .locals 0

    .line 1
    iget-object p0, p0, Ldy3;->b:Lqy3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lqy3;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lmi6;

    .line 8
    .line 9
    return-object p0
.end method
