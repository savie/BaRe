.class public final synthetic Lbz1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lig2;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:Lje0;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JLje0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbz1;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lbz1;->b:J

    .line 7
    .line 8
    iput-object p4, p0, Lbz1;->c:Lje0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final c(Lga6;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lga6;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Laz1;

    .line 7
    .line 8
    iget-object v1, p0, Lbz1;->a:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "Crashlytics Android SDK/20.0.6"

    .line 11
    .line 12
    iget-wide v3, p0, Lbz1;->b:J

    .line 13
    .line 14
    iget-object v5, p0, Lbz1;->c:Lje0;

    .line 15
    .line 16
    invoke-interface/range {v0 .. v5}, Laz1;->prepareNativeSession(Ljava/lang/String;Ljava/lang/String;JLvm7;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
