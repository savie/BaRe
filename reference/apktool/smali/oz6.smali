.class public final Loz6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:I

.field public final h:I

.field public final i:Ljava/lang/Long;

.field public final j:Ljava/lang/Long;

.field public final k:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJJJI[BILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Loz6;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Loz6;->b:J

    .line 7
    .line 8
    iput-wide p4, p0, Loz6;->c:J

    .line 9
    .line 10
    iput-wide p6, p0, Loz6;->d:J

    .line 11
    .line 12
    iput-wide p8, p0, Loz6;->e:J

    .line 13
    .line 14
    iput-wide p10, p0, Loz6;->f:J

    .line 15
    .line 16
    iput p12, p0, Loz6;->g:I

    .line 17
    .line 18
    iput p14, p0, Loz6;->h:I

    .line 19
    .line 20
    iput-object p15, p0, Loz6;->i:Ljava/lang/Long;

    .line 21
    .line 22
    move-object/from16 p1, p16

    .line 23
    .line 24
    iput-object p1, p0, Loz6;->j:Ljava/lang/Long;

    .line 25
    .line 26
    move-object/from16 p1, p17

    .line 27
    .line 28
    iput-object p1, p0, Loz6;->k:Ljava/lang/Long;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(ILcy0;Lwy6;)Lxy6;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lxy6;

    .line 7
    .line 8
    iget-object v2, v0, Loz6;->j:Ljava/lang/Long;

    .line 9
    .line 10
    iget-object v3, v0, Loz6;->k:Ljava/lang/Long;

    .line 11
    .line 12
    move-object v4, v1

    .line 13
    iget-object v1, v0, Loz6;->a:Ljava/lang/String;

    .line 14
    .line 15
    move-object/from16 v18, v3

    .line 16
    .line 17
    move-object v5, v4

    .line 18
    iget-wide v3, v0, Loz6;->b:J

    .line 19
    .line 20
    move-object v7, v5

    .line 21
    iget-wide v5, v0, Loz6;->c:J

    .line 22
    .line 23
    move-object v9, v7

    .line 24
    iget-wide v7, v0, Loz6;->d:J

    .line 25
    .line 26
    move-object v11, v9

    .line 27
    iget-wide v9, v0, Loz6;->e:J

    .line 28
    .line 29
    move-object v13, v11

    .line 30
    iget-wide v11, v0, Loz6;->f:J

    .line 31
    .line 32
    iget v15, v0, Loz6;->g:I

    .line 33
    .line 34
    iget-object v0, v0, Loz6;->i:Ljava/lang/Long;

    .line 35
    .line 36
    move-object/from16 v14, p3

    .line 37
    .line 38
    move-object/from16 v16, v0

    .line 39
    .line 40
    move-object/from16 v17, v2

    .line 41
    .line 42
    move-object v0, v13

    .line 43
    move/from16 v2, p1

    .line 44
    .line 45
    move-object/from16 v13, p2

    .line 46
    .line 47
    invoke-direct/range {v0 .. v18}, Lxy6;-><init>(Ljava/lang/String;IJJJJJLcy0;Lwy6;ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 48
    .line 49
    .line 50
    move-object v13, v0

    .line 51
    return-object v13
.end method
