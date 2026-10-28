.class public final enum Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bareapps/barebackup/settings/MultipleBackupStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NewBackupCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Ljx2;

.field private static final synthetic $VALUES:[Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

.field public static final enum ApkChanges:Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

.field public static final enum ApkOrDataChanges:Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

.field public static final Companion:Lcom/bareapps/barebackup/settings/c;

.field public static final enum DataChanges:Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

.field private static final default:Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;


# direct methods
.method private static final synthetic $values()[Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;
    .locals 3

    .line 1
    sget-object v0, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;->ApkChanges:Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 2
    .line 3
    sget-object v1, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;->DataChanges:Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 4
    .line 5
    sget-object v2, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;->ApkOrDataChanges:Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 2
    .line 3
    const-string v1, "ApkChanges"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;->ApkChanges:Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 10
    .line 11
    new-instance v1, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 12
    .line 13
    const-string v2, "DataChanges"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;->DataChanges:Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 20
    .line 21
    new-instance v1, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 22
    .line 23
    const-string v2, "ApkOrDataChanges"

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    invoke-direct {v1, v2, v3}, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;->ApkOrDataChanges:Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 30
    .line 31
    invoke-static {}, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;->$values()[Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sput-object v1, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;->$VALUES:[Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 36
    .line 37
    invoke-static {v1}, Lly8;->q([Ljava/lang/Enum;)Lkx2;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sput-object v1, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;->$ENTRIES:Ljx2;

    .line 42
    .line 43
    new-instance v1, Lcom/bareapps/barebackup/settings/c;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v1, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;->Companion:Lcom/bareapps/barebackup/settings/c;

    .line 49
    .line 50
    sput-object v0, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;->default:Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 51
    .line 52
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getDefault$cp()Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;
    .locals 1

    .line 1
    sget-object v0, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;->default:Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getEntries()Ljx2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljx2;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;->$ENTRIES:Ljx2;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;
    .locals 1

    .line 1
    const-class v0, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;
    .locals 1

    .line 1
    sget-object v0, Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;->$VALUES:[Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/bareapps/barebackup/settings/MultipleBackupStrategy$NewBackupCondition;

    .line 8
    .line 9
    return-object v0
.end method
