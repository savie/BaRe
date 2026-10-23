.class public final Llb9;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final h:Lns0;


# instance fields
.field public final a:Lvm4;

.field public final b:I

.field public final c:Lia9;

.field public final d:I

.field public final e:Z

.field public final f:Z

.field public final g:Lns0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lns0;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lns0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Llb9;->h:Lns0;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lvm4;IIZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llb9;->a:Lvm4;

    .line 5
    .line 6
    iput p2, p0, Llb9;->b:I

    .line 7
    .line 8
    sget-object p1, Lqa9;->a:[I

    .line 9
    .line 10
    invoke-static {p2}, Ldj7;->A(I)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    aget p1, p1, p2

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    if-eq p1, p2, :cond_1

    .line 18
    .line 19
    const/4 p2, 0x2

    .line 20
    if-eq p1, p2, :cond_0

    .line 21
    .line 22
    sget-object p1, Lia9;->d:Lia9;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object p1, Lia9;->e:Lia9;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sget-object p1, Lia9;->c:Lia9;

    .line 29
    .line 30
    :goto_0
    iput-object p1, p0, Llb9;->c:Lia9;

    .line 31
    .line 32
    iput p3, p0, Llb9;->d:I

    .line 33
    .line 34
    iput-boolean p4, p0, Llb9;->e:Z

    .line 35
    .line 36
    iput-boolean p5, p0, Llb9;->f:Z

    .line 37
    .line 38
    sget-object p1, Llb9;->h:Lns0;

    .line 39
    .line 40
    iput-object p1, p0, Llb9;->g:Lns0;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final a()Lvm4;
    .locals 1

    .line 1
    iget-object v0, p0, Llb9;->g:Lns0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Llb9;->a:Lvm4;

    .line 7
    .line 8
    return-object p0
.end method
