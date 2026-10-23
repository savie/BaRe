.class public final synthetic Lwz6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:[B

.field public final synthetic c:[B

.field public final synthetic d:[B

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic k:I

.field public final synthetic n:Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;


# direct methods
.method public synthetic constructor <init>(J[B[B[BJJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lwz6;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lwz6;->b:[B

    .line 7
    .line 8
    iput-object p4, p0, Lwz6;->c:[B

    .line 9
    .line 10
    iput-object p5, p0, Lwz6;->d:[B

    .line 11
    .line 12
    iput-wide p6, p0, Lwz6;->e:J

    .line 13
    .line 14
    iput-wide p8, p0, Lwz6;->f:J

    .line 15
    .line 16
    iput p10, p0, Lwz6;->k:I

    .line 17
    .line 18
    iput-object p11, p0, Lwz6;->n:Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v3

    .line 7
    check-cast p2, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v11

    .line 13
    iget v0, p0, Lwz6;->k:I

    .line 14
    .line 15
    iget-wide v1, p0, Lwz6;->a:J

    .line 16
    .line 17
    iget-object v4, p0, Lwz6;->b:[B

    .line 18
    .line 19
    iget-object v5, p0, Lwz6;->c:[B

    .line 20
    .line 21
    iget-object v6, p0, Lwz6;->d:[B

    .line 22
    .line 23
    iget-wide v7, p0, Lwz6;->e:J

    .line 24
    .line 25
    iget-wide v9, p0, Lwz6;->f:J

    .line 26
    .line 27
    iget-object v12, p0, Lwz6;->n:Lcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;

    .line 28
    .line 29
    invoke-static/range {v0 .. v12}, Lcom/swiftapps/sba/SbaLibaegisCryptoNative;->b(IJI[B[B[BJJILcom/swiftapps/sba/internal/progress/SbaNativeProgressListener;)[J

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method
