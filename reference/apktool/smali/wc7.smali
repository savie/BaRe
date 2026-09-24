.class public final Lwc7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>(JJJJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    mul-long/2addr p5, p7

    .line 5
    mul-long/2addr p1, p5

    .line 6
    iput-wide p1, p0, Lwc7;->a:J

    .line 7
    .line 8
    mul-long/2addr p3, p5

    .line 9
    iput-wide p3, p0, Lwc7;->b:J

    .line 10
    .line 11
    return-void
.end method

.method public static a(Ljw0;)Lwc7;
    .locals 10

    .line 1
    iget-object v0, p0, Low0;->b:Lvw2;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lvw2;->a(Low0;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    invoke-virtual {v0, p0}, Lvw2;->a(Low0;)J

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lvw2;->a(Low0;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v4

    .line 14
    invoke-virtual {v0, p0}, Lvw2;->e(Low0;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v6

    .line 18
    invoke-virtual {v0, p0}, Lvw2;->e(Low0;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v8

    .line 22
    new-instance v1, Lwc7;

    .line 23
    .line 24
    invoke-direct/range {v1 .. v9}, Lwc7;-><init>(JJJJ)V

    .line 25
    .line 26
    .line 27
    return-object v1
.end method
