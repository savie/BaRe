.class public abstract Lt65;
.super Ls65;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final p:J

.field public static final q:J


# instance fields
.field public final c:Ljg7;

.field public final d:Lun7;

.field public final e:Lk55;

.field public final f:Lop6;

.field public final k:Lmp7;

.field public final n:Lcd2;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Lu65;->values()[Lu65;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    :goto_0
    if-ge v4, v1, :cond_1

    .line 10
    .line 11
    aget-object v5, v0, v4

    .line 12
    .line 13
    iget-boolean v6, v5, Lu65;->a:Z

    .line 14
    .line 15
    if-eqz v6, :cond_0

    .line 16
    .line 17
    iget-wide v5, v5, Lu65;->b:J

    .line 18
    .line 19
    or-long/2addr v2, v5

    .line 20
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sput-wide v2, Lt65;->p:J

    .line 24
    .line 25
    sget-object v0, Lu65;->f:Lu65;

    .line 26
    .line 27
    iget-wide v0, v0, Lu65;->b:J

    .line 28
    .line 29
    sget-object v2, Lu65;->k:Lu65;

    .line 30
    .line 31
    iget-wide v2, v2, Lu65;->b:J

    .line 32
    .line 33
    or-long/2addr v0, v2

    .line 34
    sget-object v2, Lu65;->n:Lu65;

    .line 35
    .line 36
    iget-wide v2, v2, Lu65;->b:J

    .line 37
    .line 38
    or-long/2addr v0, v2

    .line 39
    sget-object v2, Lu65;->p:Lu65;

    .line 40
    .line 41
    iget-wide v2, v2, Lu65;->b:J

    .line 42
    .line 43
    or-long/2addr v0, v2

    .line 44
    sget-object v2, Lu65;->e:Lu65;

    .line 45
    .line 46
    iget-wide v2, v2, Lu65;->b:J

    .line 47
    .line 48
    or-long/2addr v0, v2

    .line 49
    sput-wide v0, Lt65;->q:J

    .line 50
    .line 51
    return-void
.end method

.method public constructor <init>(Len0;Lun7;Ljg7;Lop6;Lmp7;Lcd2;)V
    .locals 2

    .line 29
    sget-wide v0, Lt65;->p:J

    invoke-direct {p0, p1, v0, v1}, Ls65;-><init>(Len0;J)V

    .line 30
    iput-object p3, p0, Lt65;->c:Ljg7;

    .line 31
    iput-object p2, p0, Lt65;->d:Lun7;

    .line 32
    iput-object p4, p0, Lt65;->f:Lop6;

    .line 33
    sget-object p1, Lbv1;->n:Lbv1;

    .line 34
    iput-object p1, p0, Lt65;->e:Lk55;

    .line 35
    iput-object p5, p0, Lt65;->k:Lmp7;

    .line 36
    iput-object p6, p0, Lt65;->n:Lcd2;

    return-void
.end method

.method public constructor <init>(Lt65;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ls65;-><init>(Lt65;J)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p1, Lt65;->c:Ljg7;

    .line 5
    .line 6
    iput-object p2, p0, Lt65;->c:Ljg7;

    .line 7
    .line 8
    iget-object p2, p1, Lt65;->d:Lun7;

    .line 9
    .line 10
    iput-object p2, p0, Lt65;->d:Lun7;

    .line 11
    .line 12
    iget-object p2, p1, Lt65;->f:Lop6;

    .line 13
    .line 14
    iput-object p2, p0, Lt65;->f:Lop6;

    .line 15
    .line 16
    iget-object p2, p1, Lt65;->e:Lk55;

    .line 17
    .line 18
    iput-object p2, p0, Lt65;->e:Lk55;

    .line 19
    .line 20
    iget-object p2, p1, Lt65;->k:Lmp7;

    .line 21
    .line 22
    iput-object p2, p0, Lt65;->k:Lmp7;

    .line 23
    .line 24
    iget-object p1, p1, Lt65;->n:Lcd2;

    .line 25
    .line 26
    iput-object p1, p0, Lt65;->n:Lcd2;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lt65;->c:Ljg7;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public final e(Ljava/lang/Class;)Lcz4;
    .locals 0

    .line 1
    iget-object p0, p0, Lt65;->k:Lmp7;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcz4;->b:Lcz4;

    .line 7
    .line 8
    return-object p0
.end method

.method public final f(Ljava/lang/Class;)Lbk4;
    .locals 0

    .line 1
    iget-object p0, p0, Lt65;->k:Lmp7;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lbk4;->n:Lbk4;

    .line 7
    .line 8
    return-object p0
.end method
