from dagster import Definitions, AssetSelection, ScheduleDefinition, load_assets_from_modules, define_asset_job

from .assets import resources

faker_job = define_asset_job("faker_job", selection=AssetSelection.all())

faker_schedule = ScheduleDefinition(
    job=faker_job,
    cron_schedule="0 0 * * *"  # every day
)

defs = Definitions(assets=load_assets_from_modules(
    [assets]), resources=resources, jobs=[faker_job], schedules=[faker_schedule])
