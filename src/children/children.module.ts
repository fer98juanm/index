import { Module } from '@nestjs/common';
import { ChildrenService } from './children.service.js';
import { ChildrenController } from './children.controller.js';

@Module({
  providers: [ChildrenService],
  controllers: [ChildrenController]
})
export class ChildrenModule {}
